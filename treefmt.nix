{
  settings.global.excludes = [
    "*.adoc"
  ];

  programs.nixfmt.enable = true;
  programs.taplo.enable = true;
  programs.jsonfmt.enable = true;
}
