{
  flake.modules.homeManager.desktop =
    { config, ... }:
    let
      browser = "${config.userSettings.defaultBrowser}.desktop";
      mail = "${config.userSettings.defaultMailClient}.desktop";
      fm = "${config.userSettings.defaultFileBrowser}.desktop";
      editor = "${config.userSettings.defaultEditor}.desktop";
      pdf = "${config.userSettings.defaultPdfViewer}.desktop";
      image = "${config.userSettings.defaultImageViewer}.desktop";
      video = "${config.userSettings.defaultVideoPlayer}.desktop";
      audio = "${config.userSettings.defaultAudioPlayer}.desktop";
      archive = "${config.userSettings.defaultArchive}.desktop";
      office = "${config.userSettings.defaultOffice}.desktop";
    in
    {
      xdg = {
        mime.enable = true;
        mimeApps = {
          enable = true;
          defaultApplications = {
            "x-scheme-handler/http" = [ browser ];
            "x-scheme-handler/https" = [ browser ];
            "x-scheme-handler/about" = [ browser ];
            "x-scheme-handler/unknown" = [ browser ];
            "text/html" = [ browser ];
            "application/xhtml+xml" = [ browser ];

            "x-scheme-handler/mailto" = [ mail ];
            "message/rfc822" = [ mail ];

            "inode/directory" = [ fm ];

            "text/plain" = [ editor ];
            "text/markdown" = [ editor ];
            "application/json" = [ editor ];
            "application/xml" = [ editor ];
            "text/x-shellscript" = [ editor ];
            "text/x-python" = [ editor ];
            "text/x-c" = [ editor ];
            "text/x-c++" = [ editor ];
            "text/x-rust" = [ editor ];
            "text/x-nix" = [ editor ];
            "application/x-yaml" = [ editor ];
            "text/yaml" = [ editor ];
            "text/x-toml" = [ editor ];

            "application/pdf" = [ pdf ];
            "application/x-pdf" = [ pdf ];

            "image/jpeg" = [ image ];
            "image/jpg" = [ image ];
            "image/png" = [ image ];
            "image/webp" = [ image ];
            "image/gif" = [ image ];
            "image/svg+xml" = [ image ];
            "image/tiff" = [ image ];
            "image/bmp" = [ image ];
            "image/x-xcf" = [ image ];

            "video/mp4" = [ video ];
            "video/x-matroska" = [ video ]; # mkv
            "video/webm" = [ video ];
            "video/x-msvideo" = [ video ]; # avi
            "video/quicktime" = [ video ]; # mov
            "video/mpeg" = [ video ];

            "audio/mpeg" = [ audio ]; # mp3
            "audio/mp4" = [ audio ]; # m4a
            "audio/ogg" = [ audio ];
            "audio/flac" = [ audio ];
            "audio/wav" = [ audio ];
            "audio/x-wav" = [ audio ];
            "audio/webm" = [ audio ];
            "audio/aac" = [ audio ];

            "application/zip" = [ archive ];
            "application/x-zip-compressed" = [ archive ];
            "application/x-7z-compressed" = [ archive ];
            "application/x-rar" = [ archive ];
            "application/x-rar-compressed" = [ archive ];
            "application/x-tar" = [ archive ];
            "application/gzip" = [ archive ];
            "application/x-gzip" = [ archive ];
            "application/x-bzip2" = [ archive ];
            "application/x-xz" = [ archive ];
            "application/zstd" = [ archive ];
            "application/x-zstd" = [ archive ];

            "application/vnd.openxmlformats-officedocument.wordprocessingml.document" = [ office ]; # docx
            "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" = [ office ]; # xlsx
            "application/vnd.openxmlformats-officedocument.presentationml.presentation" = [ office ]; # pptx
            "application/msword" = [ office ];
            "application/vnd.ms-excel" = [ office ];
            "application/vnd.ms-powerpoint" = [ office ];
            "application/vnd.oasis.opendocument.text" = [ office ]; # odt
            "application/vnd.oasis.opendocument.spreadsheet" = [ office ]; # ods
            "application/vnd.oasis.opendocument.presentation" = [ office ]; # odp
          };
        };
      };
    };
}
