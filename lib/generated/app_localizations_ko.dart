// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get settings => '설정';

  @override
  String get general => '일반';

  @override
  String get providers => 'Providers';

  @override
  String get mcpServer => 'MCP 서버';

  @override
  String get language => '언어';

  @override
  String get theme => '테마';

  @override
  String get dark => '다크';

  @override
  String get light => '라이트';

  @override
  String get system => '시스템';

  @override
  String get languageSettings => '언어 설정';

  @override
  String get featureSettings => '기능 설정';

  @override
  String get enableArtifacts => '아티팩트 활성화';

  @override
  String get enableArtifactsDescription => '대화에서 AI 어시스턴트의 아티팩트를 활성화하면 더 많은 토큰을 사용합니다.';

  @override
  String get enableToolUsage => '도구 사용 활성화';

  @override
  String get enableToolUsageDescription => '대화에서 도구 사용을 활성화하면 더 많은 토큰을 사용합니다.';

  @override
  String get themeSettings => '테마 설정';

  @override
  String get lightTheme => '밝은 테마';

  @override
  String get darkTheme => '어두운 테마';

  @override
  String get followSystem => '시스템 설정 따르기';

  @override
  String get showAvatar => '아바타 보기';

  @override
  String get showAssistantAvatar => 'AI 어시스턴트 아바타 보기';

  @override
  String get showAssistantAvatarDescription => '대화에서 AI 어시스턴트의 아바타를 보여줍니다.';

  @override
  String get showUserAvatar => '사용자 아바타 보기';

  @override
  String get showUserAvatarDescription => '대화에서 사용자의 아바타를 보여줍니다.';

  @override
  String get systemPrompt => '시스템 프롬프트';

  @override
  String get systemPromptDescription => '이것은 AI 어시스턴트와의 대화를 위한 시스템 프롬프트입니다. 어시스턴트의 행동과 스타일을 설정하는 데 사용됩니다.';

  @override
  String get llmKey => 'LLM Key';

  @override
  String get toolKey => 'Tool Key';

  @override
  String get saveSettings => '설정 저장';

  @override
  String get apiKey => 'API Key';

  @override
  String enterApiKey(Object provider) {
    return 'API Key를 입력하세요';
  }

  @override
  String get apiKeyValidation => 'API Key는 최소 10자 이상이어야 합니다';

  @override
  String get apiEndpoint => 'API Endpoint';

  @override
  String get enterApiEndpoint => 'API 엔드포인트 주소를 입력하세요';

  @override
  String get platformNotSupported => '현재 플랫폼에서는 MCP 서버를 지원하지 않습니다';

  @override
  String get mcpServerDesktopOnly => 'MCP 서버는 Windows, macOS, Linux와 같은 데스크톱 환경에서만 지원됩니다';

  @override
  String get searchServer => '서버 검색...';

  @override
  String get noServerConfigs => '서버 설정이 없습니다';

  @override
  String get addProvider => 'Provider 추가';

  @override
  String get refresh => '새로고침';

  @override
  String get install => '설치';

  @override
  String get edit => '수정';

  @override
  String get delete => '삭제';

  @override
  String get command => '명령어 또는 서버 URL';

  @override
  String get arguments => '인수';

  @override
  String get environmentVariables => '환경 변수';

  @override
  String get serverName => '서버 이름';

  @override
  String get commandExample => '예: npx, uvx 또는 https://mcpserver.com';

  @override
  String get argumentsExample => '공백으로 구분하여 입력, 예: -m mcp.server';

  @override
  String get envVarsFormat => '한 줄에 하나씩, 예: KEY=VALUE';

  @override
  String get cancel => '취소';

  @override
  String get save => '저장';

  @override
  String get confirmDelete => '삭제 확인';

  @override
  String confirmDeleteServer(Object name) {
    return '\"$name\" 서버를 삭제하시겠습니까?';
  }

  @override
  String get error => '오류';

  @override
  String commandNotExist(Object command, Object path) {
    return '\"$command\" 명령어가 존재하지 않습니다. 먼저 설치하세요.\n\n현재 PATH:\n$path';
  }

  @override
  String get all => '모두';

  @override
  String get installed => '설치됨';

  @override
  String get modelSettings => '모델 설정';

  @override
  String temperature(Object value) {
    return '온도(Temperature): $value';
  }

  @override
  String get temperatureTooltip => '샘플링 온도는 출력의 무작위성을 조절합니다:\n• 0.0: 코드 생성 및 수학 문제에 적합\n• 1.0: 데이터 추출 및 분석에 적합\n• 1.3: 일반 대화 및 번역에 적합\n• 1.5: 창의적인 글쓰기나 시 작성에 적합';

  @override
  String topP(Object value) {
    return 'Top P: $value';
  }

  @override
  String get topPTooltip => 'Top P(누클리어스 샘플링)는 온도 설정의 대안입니다. 모델은 누적 확률이 P를 넘는 토큰들만 고려합니다. 일반적으로 Temperature와 Top P는 동시에 조절하지 않는 것이 좋습니다.';

  @override
  String get maxTokens => '최대 토큰 수';

  @override
  String get maxTokensTooltip => '생성할 수 있는 최대 토큰 수입니다. 한 토큰은 평균 약 4자 정도에 해당하며, 긴 대화일수록 더 많은 토큰이 필요합니다.';

  @override
  String frequencyPenalty(Object value) {
    return '빈도 패널티(Frequency Penalty): $value';
  }

  @override
  String get frequencyPenaltyTooltip => '빈도 패널티는 텍스트 내에서 이미 등장한 토큰의 사용 빈도를 기준으로 새 토큰의 생성 가능성을 낮춥니다. 반복적인 문장을 줄이는 데 효과적입니다.';

  @override
  String presencePenalty(Object value) {
    return '출현 패널티(Presence Penalty): $value';
  }

  @override
  String get presencePenaltyTooltip => '출현 패널티는 텍스트 내 등장 여부를 기준으로 새 토큰에 패널티를 부여하여, 새로운 주제에 대해 이야기할 확률을 높입니다.';

  @override
  String get enterMaxTokens => '최대 토큰 수를 입력하세요';

  @override
  String get share => '공유';

  @override
  String get modelConfig => '모델 설정';

  @override
  String get debug => '디버그';

  @override
  String get webSearchTest => '웹 검색 테스트';

  @override
  String get today => '오늘';

  @override
  String get yesterday => '어제';

  @override
  String get last7Days => '지난 7일';

  @override
  String get last30Days => '지난 30일';

  @override
  String get earlier => '이전';

  @override
  String get confirmDeleteSelected => '선택한 대화를 삭제하시겠습니까?';

  @override
  String get ok => '확인';

  @override
  String get askMeAnything => '무엇을 도와드릴까요?';

  @override
  String get uploadFiles => '파일 업로드';

  @override
  String get welcomeMessage => '어떻게 도와드릴까요?';

  @override
  String get copy => '복사';

  @override
  String get copied => '복사됨';

  @override
  String get retry => '다시 시도';

  @override
  String get brokenImage => '올바르지 않은 이미지';

  @override
  String toolCall(Object name) {
    return '$name 도구 호출';
  }

  @override
  String toolResult(Object name) {
    return '$name 도구 결과';
  }

  @override
  String get selectModel => '모델 선택';

  @override
  String get close => '닫기';

  @override
  String get selectFromGallery => '갤러리에서 선택';

  @override
  String get selectFile => '파일 선택';

  @override
  String get uploadFile => '파일 업로드';

  @override
  String get openBrowser => '브라우저 열기';

  @override
  String get codeCopiedToClipboard => '코드가 복사됨';

  @override
  String get thinking => '생각중';

  @override
  String get thinkingEnd => '생각 종료';

  @override
  String get tool => '도구';

  @override
  String get userCancelledToolCall => '사용자가 도구 실행을 취소함';

  @override
  String get code => '코드';

  @override
  String get preview => '미리보기';

  @override
  String get loadContentFailed => '콘텐츠를 로드하지 못했습니다. 다시 시도해주세요.';

  @override
  String get openingBrowser => '브라우저 열기';

  @override
  String get functionCallAuth => '도구 호출 인증';

  @override
  String get allowFunctionExecution => '다음 도구를 실행하시겠습니까:';

  @override
  String parameters(Object params) {
    return '매개변수: $params';
  }

  @override
  String get allow => '허용';

  @override
  String get loadDiagramFailed => '다이어그램을 로드하지 못했습니다. 다시 시도해주세요.';

  @override
  String get copiedToClipboard => '복사됨';

  @override
  String get chinese => 'Chinese';

  @override
  String get functionRunning => '도구 실행중...';

  @override
  String get thinkingProcess => '생각중';

  @override
  String get thinkingProcessWithDuration => '생각중, 시간 사용';

  @override
  String get thinkingEndWithDuration => '생각 종료, 시간 사용';

  @override
  String get thinkingEndComplete => '생각 종료';

  @override
  String seconds(Object seconds) {
    return '${seconds}s';
  }

  @override
  String get fieldRequired => '이 필드는 필수입니다.';

  @override
  String get autoApprove => '자동 승인';

  @override
  String get verify => '키 확인';

  @override
  String get howToGet => '어떻게 얻습니까?';

  @override
  String get modelList => '모델 목록';

  @override
  String get enableModels => '모델 활성화';

  @override
  String get disableAllModels => '모든 모델 비활성화';

  @override
  String get saveSuccess => '설정이 성공적으로 저장됨';

  @override
  String get genTitleModel => 'Gen Title';

  @override
  String get serverNameTooLong => '서버 이름은 50자를 초과할 수 없습니다.';

  @override
  String get confirm => '확인';

  @override
  String get providerName => 'Provider 이름';

  @override
  String get apiStyle => 'API 스타일';

  @override
  String get enterProviderName => 'Provider 이름 입력';

  @override
  String get providerNameRequired => 'Provider 이름은 필수입니다.';

  @override
  String get addModel => '모델 추가';

  @override
  String get modelName => '모델 이름';

  @override
  String get enterModelName => '모델 이름 입력';

  @override
  String get noApiConfigs => 'API 설정이 없습니다.';

  @override
  String get add => '추가';

  @override
  String get fetch => '가져오기';

  @override
  String get on => 'on';

  @override
  String get off => 'off';

  @override
  String get apiUrl => 'API URL';

  @override
  String get selectApiStyle => 'API 스타일 선택';

  @override
  String get serverType => '서버 유형';

  @override
  String get reset => '초기화';

  @override
  String get editTitle => '제목 수정';

  @override
  String get enterNewTitle => '새 제목을 입력하세요';
}
