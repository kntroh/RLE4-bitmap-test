
import org.eclipse.swt.all;
import java.io.ByteArrayInputStream;

void main() {
	auto d = new Display;
	auto s = new Shell(d);
	s.setLayout(new FillLayout);
	s.setSize(100, 100);

	auto l = new Label(s, SWT.NONE);
	auto bin = new ByteArrayInputStream(cast(byte[])std.file.read("test_rle4.bmp"));
	auto img1 = new Image(d, new ImageData(bin));
	l.setImage(img1);

	l = new Label(s, SWT.NONE);
	bin = new ByteArrayInputStream(cast(byte[])std.file.read("test_v4.bmp"));
	auto img2 = new Image(d, new ImageData(bin));
	l.setImage(img2);

	s.open();

	while (!s.isDisposed())
		if (!d.readAndDispatch())
			d.sleep();

	img1.dispose();
	img2.dispose();
	d.dispose();
}
