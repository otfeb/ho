package day0620;

import java.util.Scanner;

import javax.sound.midi.Soundbank;

public class StringEqual_07 {

	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		
		String word;
		
		System.out.println("영어단어를 입력하세요");
		System.out.println("입력예)happy,angel,rose");
		word = scanner.nextLine();
		
		System.out.println("입력한 문자열: "+word);
		
		if(word.equals("angel")) {
			System.out.println("***천사***");
		}
		else if(word.equalsIgnoreCase("Happy")) {
			System.out.println("***행복***");
		}
		else if(word.equals("rose")) {
			System.out.println("***장미***");
		}
		else {
			System.out.println("***한글단어가 등록되지 않았습니다***");
		}

	}

}
