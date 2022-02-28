import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;

public class Practice implements ActionListener{
	// 버튼 만들기

	JFrame frame;
	JButton button;
	
	public Practice() {
		frame = new JFrame();
		frame.setTitle("Hello");
		frame.setSize(500,400);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		button = new JButton("Click");
		button.addActionListener(this);
		
		frame.setLayout(new FlowLayout());
		frame.add(button);
		frame.setVisible(true);
		
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		
		System.out.println("You have Clicked the button");
		
	}
	
	public static void main(String[] args) {
		
		Practice practice = new Practice();
	}
}
