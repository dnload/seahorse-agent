import 'openai_client.dart';
import 'claude_client.dart';
import 'deepseek_client.dart';
import 'base_llm_client.dart';
import 'ollama_client.dart';
import 'gemini_client.dart';
import 'package:chatmcp/provider/provider_manager.dart';
import 'package:chatmcp/provider/settings_provider.dart';
import 'package:logging/logging.dart';
import 'model.dart' as llm_model;

enum LLMProvider { openai, claude, ollama, deepseek, gemini }

class LLMFactory {
  static BaseLLMClient create(LLMProvider provider,
      {required String apiKey, required String baseUrl}) {
    switch (provider) {
      case LLMProvider.openai:
        return OpenAIClient(apiKey: apiKey, baseUrl: baseUrl);
      case LLMProvider.claude:
        return ClaudeClient(apiKey: apiKey, baseUrl: baseUrl);
      case LLMProvider.deepseek:
        return DeepSeekClient(apiKey: apiKey, baseUrl: baseUrl);
      case LLMProvider.ollama:
        return OllamaClient(baseUrl: baseUrl);
      case LLMProvider.gemini:
        return GeminiClient(apiKey: apiKey, baseUrl: baseUrl);
    }
  }
}

class LLMFactoryHelper {
  static final nonChatModelKeywords = {"whisper", "tts", "dall-e", "embedding"};

  static bool isChatModel(llm_model.Model model) {
    return !nonChatModelKeywords.any((keyword) => model.name.contains(keyword));
  }

  static final Map<String, LLMProvider> providerMap = {
    "openai": LLMProvider.openai,
    "claude": LLMProvider.claude,
    "deepseek": LLMProvider.deepseek,
    "ollama": LLMProvider.ollama,
    "gemini": LLMProvider.gemini,
  };

  static BaseLLMClient createFromModel(llm_model.Model currentModel) {
    try {
      Logger.root.severe('디버그 - currentModel: ${currentModel.toJson()}');
      
      final apiSettings = ProviderManager.settingsProvider.apiSettings;
      Logger.root.severe('디버그 - 사용 가능한 API 설정: ${apiSettings.map((s) => "${s.providerId}:${s.apiEndpoint}").join(", ")}');
      
      final setting = apiSettings.firstWhere(
          (element) => element.providerId == currentModel.providerId,
          orElse: () {
            Logger.root.severe('디버그 - providerId로 일치하는 설정을 찾을 수 없음: ${currentModel.providerId}');
            return apiSettings.firstWhere(
              (element) => element.providerName == currentModel.providerName,
              orElse: () {
                Logger.root.severe('디버그 - providerName으로도 일치하는 설정을 찾을 수 없음: ${currentModel.providerName}');
                return LLMProviderSetting(
                  apiKey: 'seahorse', 
                  apiEndpoint: 'http://114.110.134.73:8085/v1', 
                  providerId: 'openai',
                  apiStyle: 'openai'
                );
              }
            );
          });

      // 获取配置信息
      final apiKey = setting.apiKey;
      final baseUrl = setting.apiEndpoint;

      Logger.root.severe(
          '디버그 - 선택된 설정: providerId=${setting.providerId}, baseUrl=${baseUrl}, apiStyle=${setting.apiStyle}');

      var provider = LLMFactoryHelper.providerMap[currentModel.providerId];
      if (provider == null) {
        Logger.root.severe('디버그 - providerId에 해당하는 프로바이더를 찾을 수 없음, apiStyle 사용: ${currentModel.apiStyle}');
      }

      provider ??= LLMProvider.values.byName(currentModel.apiStyle);

      Logger.root.severe('디버그 - 최종 선택된 프로바이더: $provider, apiKey=${apiKey}, baseUrl=${baseUrl}');

      // 创建 LLM 客户端
      return LLMFactory.create(provider, apiKey: apiKey, baseUrl: baseUrl);
    } catch (e, stackTrace) {
      // 如果找不到匹配的提供商，使用默认的OpenAI
      Logger.root.severe('디버그 - 예외 발생: $e');
      Logger.root.severe('디버그 - 스택 트레이스: $stackTrace');
      Logger.root.warning('未找到匹配的提供商配置: ${currentModel.providerId}，使用默认OpenAI配置');

      var openAISetting = ProviderManager.settingsProvider.apiSettings
          .firstWhere((element) => element.providerId == "openai",
              orElse: () => LLMProviderSetting(
                  apiKey: 'seahorse', 
                  apiEndpoint: 'http://114.110.134.73:8085/v1', 
                  providerId: 'openai',
                  apiStyle: 'openai'));

      return OpenAIClient(
          apiKey: openAISetting.apiKey, baseUrl: openAISetting.apiEndpoint);
    }
  }
}
