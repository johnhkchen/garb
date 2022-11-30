use yew::prelude::*;
use yew::{function_component, html, Html};

#[function_component]
fn App() -> Html {
    let counter = use_state(|| 0);
    
    let add_1= {
        let counter = counter.clone();
        move |_| {
            let value = *counter + 1;
            counter.set(value);
        }
    };
    let add_10= {
        let counter = counter.clone();
        move |_| {
            let value = *counter + 10;
            counter.set(value);
        }
    };
    let add_25 = {
        let counter = counter.clone();
        move |_| {
            let value = *counter + 25;
            counter.set(value);
        }
    };

    html! {
        <div>
            <button onclick={add_1}>{ "+1" }</button>
            <button onclick={add_10}>{ "+10" }</button>
            <button onclick={add_25}>{ "+25" }</button>
            <p>{ *counter }</p>
        </div>
    }
}

fn main() {
    yew::Renderer::<App>::new().render();
}