//
//  Cards.m
//  prjCards
//
//  Created by Matheus Castro on 11/03/14.
//  Copyright (c) 2014 matheuscastro. All rights reserved.
//

#import "Cards.h"

@interface Cards() //declarações privadas

@end


@implementation Cards

@synthesize contents = _contents; //alocar espaço para a variavel de instancia (padronizado como "underline" + o nome da propriedade);

- (NSString *) contents { //metodo get, traço significa que é privado, NString * que é um metodo que retorna ponteiro para uma String e "contents" é o nome do metodo que por padrão é sempre o mesmo nome da propriedade);
    
    return  _contents; //retorna o _contets que foi sintetizado;
}

- (void) setContents:(NSString *)contents { //metodo set, traço significa  que é privado, void que retorna nada, o nome do metodo, NString * é o argumento que vai ser passado por parametro e do lado o nome do argumento passado;

    
    _contents = contents; //a variável de instancia sintetizada recebe o valor do argumento passado pelo metodo;
}


- (int)match:(Cards *)card{ //metodo que retorna inteiro chamado match que tem argumento card que é um ponteiro para a classe cards.h
    
    int score=0;
    
    if([card.contents isEqualToString:self.contents]){//se o get do argumento passado "card.contets" é igual ao get dele mesmo "self.contets" self = this no java;
        score=1; // passar ponto;
    }
    
    return score;
}

- (int)matchA:(NSArray *)otherCards;{
    
    int score=0;
    
    for(Cards *card in otherCards){
        if([card.contents isEqualToString:self.contents]){
            score=1;
        }
    }
    
    return score;
}


@end
