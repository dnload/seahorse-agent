import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chatmcp/provider/mcp_server_provider.dart';

class ServerStateProvider extends ChangeNotifier {
  static final ServerStateProvider _instance = ServerStateProvider._internal();
  factory ServerStateProvider() => _instance;
  ServerStateProvider._internal();

  // Server enabled status
  final Map<String, bool> _enabledStates = {};
  // Server running status
  final Map<String, bool> _runningStates = {};
  // Servers that are starting
  final Map<String, bool> _startingStates = {};

  // Get count of enabled servers
  int get enabledCount => _enabledStates.values.where((value) => value).length;

  // Get server enabled status
  bool isEnabled(String serverName) => _enabledStates[serverName] ?? false;

  // Get server running status
  bool isRunning(String serverName) => _runningStates[serverName] ?? false;

  // Get server starting status
  bool isStarting(String serverName) => _startingStates[serverName] ?? false;

  // Set server enabled status
  void setEnabled(String serverName, bool value) {
    _enabledStates[serverName] = value;
    notifyListeners();
  }

  // Set server running status
  void setRunning(String serverName, bool value) {
    _runningStates[serverName] = value;
    _startingStates.remove(serverName); // No longer in starting state
    notifyListeners();
  }

  // Set server starting status
  void setStarting(String serverName, bool value) {
    _startingStates[serverName] = value;
    notifyListeners();
  }

  // Sync status from McpServerProvider
  void syncFromProvider(McpServerProvider provider, List<String> servers) {
    if (servers.isEmpty) return;

    bool changed = false;
    for (String server in servers) {
      // Sync enabled status
      bool enabled = provider.isToolCategoryEnabled(server);
      if (_enabledStates[server] != enabled) {
        _enabledStates[server] = enabled;
        changed = true;
      }

      // Sync running status
      bool running = provider.mcpServerIsRunning(server);
      if (_runningStates[server] != running) {
        _runningStates[server] = running;
        changed = true;
      }
    }

    if (changed) {
      notifyListeners();
    }
  }
}
