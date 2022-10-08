//
//  StoryBrain.swift
//  Destino - A Aventura
//
//  Created by Vinicius Pinheiro de Oliveira on 08/10/22.
//

import Foundation


struct StoryBrain {
    
    var storyNumber = 0
    
    
    
    
    let stories = [
        
        Story(title: "Você vê uma bifurcação na estrada", choice1: "Virar a direita", choice1Destination: 2, choice2: "Virar a esquerda", choice2Destination: 1),//historia 0
        
        Story(title: "Você vê um tigre", choice1: "grita por ajuda", choice1Destination: 3,
              choice2: "finge de morto", choice2Destination: 3),//Historia 1
        
        Story(title: "Você acha um tesouro", choice1: "Abre", choice1Destination: 5,
              choice2: "Verifica armadilhas", choice2Destination: 4),//Historia 2
        
        Story(title: "Um cachorro tenta te defender", choice1: "Ajuda o cachorro", choice1Destination: 6,
              choice2: "Corre por sua vida", choice2Destination: 0),//Historia 3
        
        Story(title: "Tinha uma bomba e você morreu", choice1: "Vender a alma ao diabo", choice1Destination: 7, choice2: "Fim de jogo", choice2Destination: 7),//Historia 4
        
        Story(title: "Ficou rico, nunca mais vai trabalhar", choice1: "Festejar", choice1Destination: 7, choice2: "Festejar", choice2Destination: 7),//Historia 5
        
        Story(title: "Tigre mata o cachorro e depois te mata", choice1: "Vender a alma ao diabo", choice1Destination: 7, choice2: "Fim de Jogo", choice2Destination: 7),//Historia 6
        
        Story(title: "Sem compromisso, você nunca inicia; mais importante, sem consistência , você nunca termina. \nNÃO É FÁCIL! Se fosse fácil todos estariam fazendo!", choice1: "Fim de Jogo", choice1Destination: 0, choice2: "Fim de Jogo", choice2Destination: 0),//Historia 7
        
        
        
    ]
   


    
    
    func getTitleText() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String{
        return stories[storyNumber].choice1
    }
    func getChoice2() -> String{
        return stories[storyNumber].choice2
    }
    
    
    
    
    mutating func nextStory(userChoice: String){
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1{
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2{
            storyNumber = currentStory.choice2Destination
            
        }
    
    }
    
}

