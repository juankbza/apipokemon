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
