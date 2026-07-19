import 'dart:convert';


class Welcome {

    
    String? name;
    dynamic types;
    String? region;
    int height;
    dynamic abilities;
    dynamic id;
    dynamic flavorText;
    dynamic sprites;
  


    Welcome({

        this.name,
        required this.types,
        this.region,
        required this.height,
        required this.id,
        required this.abilities,
        required this.flavorText,
        this.sprites,
        

        });

    factory Welcome.fromJson(String str) => Welcome.fromMap(json.decode(str));

  factory Welcome.fromMap(Map<String, dynamic> json) => Welcome(

      name: json["name"],
      types: json["types"],
      region: json["region"],
      height: json["height"],
      id: json["id"],
      abilities: json["abilities"],
      flavorText: json["flavor_text"],
      sprites: json["sprites"],
    
      

  );

}
