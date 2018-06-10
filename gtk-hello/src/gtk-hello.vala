public class MyApp : Gtk.Application {

    public MyApp () {
        Object (
            application_id: "com.github.sciblo.elementary",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {


        var main_window = new Gtk.ApplicationWindow(this);      //Создаём окно
        main_window.default_height = 300;       //Высота окна 300px
        main_window.default_width = 300;        //Ширина окна 300px
        main_window.title = "Hello World";      //Название окна


        var button_hello = new Gtk.Button.with_label("Click me!");      //Создаём кнопку с надписью
        button_hello.margin = 12;                                       //Отступ 12px со всех сторон
        button_hello.clicked.connect(() => {                            //Функция выполняемая при нажатии на кнопку
            button_hello.label = "Hello World!";    //После нажатия на кнопку на ней меняется надпись            
            button_hello.sensitive = false;         //После нажатия кнопка становится неактивной
        });
        
        main_window.add(button_hello);

        main_window.show_all();

    }

    public static int main (string[] args) {
        var app = new MyApp ();
        return app.run (args);
    }
}