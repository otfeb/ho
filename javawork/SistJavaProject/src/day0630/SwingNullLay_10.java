package day0630;

import java.awt.Color;
import java.awt.Container;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class SwingNullLay_10 extends JFrame implements ActionListener {
		
	Container cp;
	JButton btn1,btn2;
	
	public SwingNullLay_10(String title) {
	
		super(title);
		cp = this.getContentPane();
		this.setBounds(200, 100, 300, 400);
		cp.setBackground(new Color(233,255,200));
		setDesign();
		setVisible(true);
	}
	
	// 디자인
	public void setDesign() {
		this.setLayout(null);
		
		btn1 = new JButton("◀");
		btn2 = new JButton("▶");
		
		// 위치 직접 지정
		btn1.setBounds(50, 100, 80, 30);
		btn2.setBounds(150, 100, 80, 30);
		
		// 프레임추가
		this.add(btn1);
		this.add(btn2);
		
		btn1.addActionListener(this);
		btn2.addActionListener(this);

		
	}
	
	@Override
	public void actionPerformed(ActionEvent e) {
		
		Object object = e.getSource();
		
		int result1 = JOptionPane.showConfirmDialog(btn1, "왼쪽으로 이동합니다", "confirm", JOptionPane.YES_NO_OPTION);
		int result2 = JOptionPane.showConfirmDialog(btn2, "오른쪽으로 이동합니다", "confirm", JOptionPane.YES_NO_OPTION);
		
		if(object == btn1) {
			JOptionPane.showConfirmDialog(this, "둘중에 선택하시오");
			if(result1 == JOptionPane.CLOSED_OPTION) {
				JOptionPane.showConfirmDialog(this, "선택 ㄱㄱ");
			}
			else if(result1 == JOptionPane.YES_OPTION) {
				JOptionPane.showMessageDialog(this, "예를 선택하셨습니다");
			}
			else {
				JOptionPane.showMessageDialog(this, "아니오를 선택하셨습니다");
			}
		}
		else if(object == btn2){
			JOptionPane.showConfirmDialog(this, "오른쪽으로 이동합니다");
			if(result2 == JOptionPane.CLOSED_OPTION) {
				JOptionPane.showConfirmDialog(this, "선택 ㄱㄱ");
			}
			else if(result2 == JOptionPane.YES_OPTION) {
				JOptionPane.showMessageDialog(this, "예를 선택하셨습니다");
			}
			else {
				JOptionPane.showMessageDialog(this, "아니오를 선택하셨습니다");
			}
		}
		
	}
	

	public static void main(String[] args) {
		
		new SwingNullLay_10("레이아웃 없이 만들기");
		

	}

}
