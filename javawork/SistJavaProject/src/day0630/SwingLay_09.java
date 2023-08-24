package day0630;

import java.awt.Color;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class SwingLay_09 extends JFrame implements ActionListener{
	
	Container cp;
	JButton btn1,btn2,btn3;
	
	public SwingLay_09(String title) {
		
		super(title);
		cp = this.getContentPane();
		this.setBounds(300, 200, 400, 500);
		cp.setBackground(new Color(233,255,200));
		setDesign();
		setVisible(true);
		
	}
	
	//디자인
	public void setDesign() {
		
		// 기본레이아웃
		this.setLayout(new FlowLayout());
		// 버튼 생성
		btn1 = new JButton("버튼 #1");
		btn2 = new JButton("버튼 #2");
		btn3 = new JButton("버튼 #3");
		
		// 프레임에 추가
		this.add(btn1);
		this.add(btn2);
		this.add(btn3);
		
		// 버튼 속성
		btn1.setBackground(Color.pink);
		btn2.setBackground(Color.cyan);
		btn3.setBackground(Color.gray);
		
		// 버튼에 이벤트 발생
		// 이벤트 핸들러랑 이벤트 발생객체 연결
		btn1.addActionListener(this);	// 상속받았으므로 this
		btn2.addActionListener(this);	
		btn3.addActionListener(this);	
			
	}
	
	// 액션
	@Override
	public void actionPerformed(ActionEvent e) {
		
		Object object =e.getSource();
		
		// 메세지 다이얼로그 형태로 보여주기
		//JOptionPane.showMessageDialog(this, "버튼클릭");
		
		if(object == btn1) {
			JOptionPane.showMessageDialog(this, "첫번째 버튼클릭");
		}
		else if(object == btn2) {
			JOptionPane.showMessageDialog(this, "두번째 버튼클릭");
		}
		else if(object == btn3) {
			JOptionPane.showMessageDialog(this, "세번쨰 버튼클릭");
		}
		
	}
	

	public static void main(String[] args) {

		new SwingLay_09("레이아웃 이벤트");
		
	}


}
