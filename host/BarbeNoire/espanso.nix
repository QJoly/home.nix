let
  date_format = "%m/%d/%Y";
  public_ip = "ifconfig.me";
in
rec {
  home.file.".config/espanso/default.yml".text = ''
    matches:
      - trigger: ":espanso"
        replace: "Hi there!"

      - trigger: ":date"
        replace: "{{mydate}}"
        vars:
          - name: mydate
            type: date
            params:
              format: "${date_format}"

      - trigger: ":shell"
        replace: "{{output}}"
        vars:
          - name: output
            type: shell
            params:
              cmd: "echo Hello from your shell"

      - trigger: ":getip"
        replace: "{{output}}"
        vars:
          - name: output
            type: shell
            params:
              cmd: "curl ${public_ip}"

    # French Accents

      - trigger: "e`"
        replace: "è"

      - trigger: "E'"
        replace: "É"

      - trigger: "E`"
        replace: "È"

      - trigger: "E^"
        replace: "Ê"

      - trigger: "E:"
        replace: "Ë"

      - trigger: "O^"
        replace: "Ô"

      - trigger: "A`"
        replace: "À"

      - trigger: "A^"
        replace: "Â"

      - trigger: "I^"
        replace: "Î"

      - trigger: "I:"
        replace: "Ï"

      - trigger: "U`"
        replace: "Ù"

      - trigger: "U^"
        replace: "Û"

      - trigger: "U:"
        replace: "Ü"

      - trigger: "OE"
        replace: "Œ"

      - trigger: "AE"
        replace: "Æ"

      - trigger: "Y:"
        replace: "Ÿ"

      - trigger: "C,"
        replace: "Ç"

      - trigger: ":dbuild"
        replace: "docker-compose build"
        
      - trigger: ":dup"
        replace: "docker-compose up"

      - trigger: ":dupd"
        replace: "docker-compose up -d"
        
      - trigger: ":ddown"
        replace: "docker-compose down"

      - trigger: ":dlogs"
        replace: "docker-compose logs -f"

      - trigger: ":dexec"
        replace: "docker-compose exec"
        
      - trigger: ":drestart"
        replace: "docker-compose restart"
  '';
}
