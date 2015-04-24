import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;

/**
 * This class demonstrates various ways to list files and diretories of a
 * specific directory.
 * Author: www.codejava.net
 */
public class ListFilesExample {

	/**
	 * Lists files and directories using String[] list() method
	 */
	public void listExample1() {
		String dirPath = "g:/Music/English";
		File dir = new File(dirPath);
		String[] files = dir.list();

		if (files.length == 0) {
			System.out.println("The directory is empty");
		} else {
			for (String aFile : files) {
				System.out.println(aFile);
			}
		}
	}

	/**
	 * Lists files and directories using File[] listFiles() method
	 */
	public void listExample2() {
		String dirPath = "g:/Music/English";
		File dir = new File(dirPath);
		File[] files = dir.listFiles();

		if (files.length == 0) {
			System.out.println("The directory is empty");
		} else {
			for (File aFile : files) {
				System.out.println(aFile.getName() + " - " + aFile.length());
			}
		}
	}

	/**
	 * Lists files and directories using File[] listFiles(FilenameFilter) method
	 */
	public void listExample3() {

		FilenameFilter mp3Filter = new FilenameFilter() {
			public boolean accept(File file, String name) {
				if (name.endsWith(".doc")) {
					// filters files whose extension is .mp3
					return true;
				} else {
					return false;
				}
			}
		};

		String dirPath = "C:/Documents and Settings/User-PC/My Documents/Downloads/Sem_2/SEM2_project-master/Uploaded_Files/";
		File dir = new File(dirPath);
		File[] files = dir.listFiles(mp3Filter);

		if (files.length == 0) {
			System.out.println("There is no Doc files");
		} else {
			for (File aFile : files) {
				System.out.println(aFile.getName() + " - " + aFile.length());
			}
		}

	}

	/**
	 * Lists files and directories using File[] listFiles(FileFilter) method
	 */
	public void listExample4() {

		FileFilter sizeFilter = new FileFilter() {
			public boolean accept(File file) {
				if (file.isFile() && file.length() > 3*1024*1024) {
					// filters files whose size greater than 3MB
					return true;
				} else {
					return false;
				}
			}
		};

		String dirPath = "g:/Music/English";
		File dir = new File(dirPath);
		File[] files = dir.listFiles(sizeFilter);

		if (files.length == 0) {
			System.out.println("There is no files bigger than 3MB");
		} else {
			for (File aFile : files) {
				System.out.println(aFile.getName() + " - " + aFile.length());
			}
		}

	}

	public static void main(String[] args) {
		ListFilesExample example = new ListFilesExample();

		
		

		System.out.println("\n======== List MP3 files:");

		example.listExample3();

		
	}
}