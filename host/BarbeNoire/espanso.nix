{
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
              format: "%m/%d/%Y"

      - trigger: ":shell"
        replace: "{{output}}"
        vars:
          - name: output
            type: shell
            params:
              cmd: "echo Hello from your shell"
  '';
}
