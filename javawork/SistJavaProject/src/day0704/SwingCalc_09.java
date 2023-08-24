package day0704;

import java.awt.Color;
import java.awt.Container;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;

public class SwingCalc_09 extends JFrame{
	
	Container cp;
	JLabel lblResult,lbl1,lbl2;		//결과나오는곳,숫자1제목,숫자2제목
	JTextField tfsu1,tfsu2;			//입력하는곳
	JButton btnAdd;					//이벤트 발생버튼
	
	public SwingCalc_09(String title) {
		super(title);
		cp=this.getContentPane();
		this.setBounds(200, 100, 300, 400);
		cp.setBackground(new Color(255,233,200));
		setDesign();
		setVisible(true);
	}
	
	public void setDesign() {
		
		this.setLayout(null);
		
		lbl1=new JLabel("숫자1");
		lbl2=new JLabel("숫자2");
		
		lbl1.setBounds(20,20,50,30);
		this.add(lbl1);
		lbl2.setBounds(20,60,50,30);
		this.add(lbl2);
		
		tfsu1=new JTextField();
		tfsu1.setBounds(70, 20, 60, 30);
		this.add(tfsu1);
		
		tfsu2=new JTextField();
		tfsu2.setBounds(70, 60, 60, 30);
		this.add(tfsu2);
		
		btnAdd = new JButton("숫자더하기");
		btnAdd.setBounds(30,120,150,50);
		this.add(btnAdd);
		
		//결과
		lblResult=new JLabel("결과 나오는곳");
		lblResult.setBounds(10,180,250,60);
		this.add(lblResult);
		
		//버튼 이벤트(익명내부 클래스 형식) 만들기
		btnAdd.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				int su1=Integer.parseInt(tfsu1.getText());
				int su2=Integer.parseInt(tfsu2.getText());
				
				int sum=su1+su2;
				
				//lblResult.setText(Integer.toString(sum));
				lblResult.setText(String.valueOf(sum));
			}
		});
	
	}

	public static void main(String[] args) {
		
		new SwingCalc_09("간단계산 연습");

	}

}
