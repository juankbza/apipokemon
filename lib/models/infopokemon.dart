import 'dart:convert';


class Welcome {

    
    dynamic name;
    dynamic types;
    String? region;
    dynamic height;
    dynamic abilities;
    dynamic id;
    dynamic sprites;

  


    Welcome({

        this.name,
        this.types,
        this.region,
        this.height,
        this.id,
        this.abilities,
        this.sprites,

        

        });

        String get fullSpritesPath {

          if (sprites != null) {
            return 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/9.png'; 
          } 
          return 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/5.png';

        }

    factory Welcome.fromJson(String str) => Welcome.fromMap(json.decode(str));

  factory Welcome.fromMap(Map<String, dynamic> json) => Welcome(

      name: json["name"],
      types: json["types"],
      region: json["region"],
      height: json["height"],
      id: json["id"],
      abilities: json["abilities"],
      sprites: json["sprites"],

    
      

  );

}
