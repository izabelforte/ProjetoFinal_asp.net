<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjetoFinal._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
    .gallery {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }

    .gallery-item {
        width: calc(33.33% - 10px);
        margin-bottom: 20px;
    }

    .gallery-item img {
        width: 100%;
        height: auto;
    }
    .text-center {
        text-align: center;
        color: #FAEFE0; 
        font-family: Arial, sans-serif; 
        text-shadow: -1px -1px 0 #D04C00,  
                 1px -1px 0 #D04C00,
                -1px  1px 0 #D04C00,
                 1px  1px 0 #D04C00;
    }
</style>
    <main>
        </br></br>

       <section class="text-center" >
            <h2 id="historiaTitle">A Nossa História</h2>
           </br></br>

            <p class="text-center">
                Localizada em Vila Nova de Gaia, a Imobiliária "CasaVirtual" sempre foi conhecida por sua dedicação em encontrar o lar perfeito para cada cliente. 
                Fundada há mais de duas décadas pela visionária corretora de imóveis, Maria Silva, a agência ganhou reputação por sua abordagem personalizada e serviço excepcional.
            </p>
        </section>
    
            <div class="row">
            <section>
                
                
                </br></br>
                
            </section>
            <section>
                <div class="gallery">
                    <div class="gallery-item">
                        <img src="https://st3.idealista.pt/news/arquivos/styles/fullwidth_xl/public/2020-03/avantecture-0vdrg5pr7ny-unsplash.jpg?VersionId=8wUu5.IUwwCnAqfvpJy4nKTOSOUITLKD&itok=TdvqRh7Y" alt="Imagem 1">
                    </div>
                    <div class="gallery-item">
                        <img src="https://images.impresa.pt/expresso/2022-08-11-9_T-_IDP.jpg-29d36a83/original/mw-860" alt="Imagem 2">
                    </div>
                    <div class="gallery-item">
                        <img src="https://images.homify.com/v1441307340/p/photo/image/876952/19TV.jpg" alt="Imagem 3">
                    </div>
                    
                </div>
            
             <section class="text-center" >
                 À medida que a cidade prospera e novas famílias buscam estabelecer raízes, a Imobiliária "CasaVirtual" continua a desempenhar um papel vital na realização dos sonhos de cada cliente. 
                 Com um compromisso renovado com a excelência e o profissionalismo, estamos prontos para ajudar a transformar cada casa em um verdadeiro lar.
                 </br>Venha nos visitar e descubra como podemos tornar seus sonhos de propriedade em uma realidade!
             </section>
                </br>
</br></br>
</br>
       
        </div>
    </main>

    </div>

</asp:Content>
