
import org.eclipse.swt.all;

void main() {
	auto d = new Display;
	auto s = new Shell(d);
	s.setLayout(new FillLayout);
	s.setSize(50, 50);

	auto l = new Label(s, SWT.NONE);
	auto img = new Image(d, new ImageData("test.bmp"));
	l.setImage(img);

	s.open();

	while (!s.isDisposed())
		if (!d.readAndDispatch())
			d.sleep();

	img.dispose();
	d.dispose();
}
