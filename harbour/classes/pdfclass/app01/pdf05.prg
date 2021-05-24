REQUEST HB_CODEPAGE_PT850

Function Main()
 Local x, cMsg, oPDF, nLinha, nLenItem, nLenDescri, nLenUnit, nLenDescont, nLenTotal, nMaxCol, nMaxRow
 
   hb_SetCodepage('PT850')
   
   oPDF:=PDFClass()
   oPDF:Begin()
   oPDF:SetType( 2 )
   oPDF:AddPage()
   
   nMaxCol := oPDF:MaxCol()
   nMaxRow := oPDF:MaxRow()
   
   oPDF:DrawRetangle( 0, 0, 40, 11, Nil, Nil, Nil )                 // box esquerdo
   oPDF:DrawImage( "logotipo.jpg", 08, 1.5, 45, 10 )                // logotipo
   
   oPDF:DrawRetangle( 0, 41, 75, 11, Nil, Nil, Nil )  // box centro
   oPDF:DrawImage( "logow1.jpg", 5.7, 83.5, 4, 2 )    // logotipo WattsApp
   oPDF:DrawText( 2.0, 42, PadC( "Rua Abolição, 1414 - Ponte Preta", nMaxCol - 80 ), Nil, 10, "Helvetica", Nil, Nil )
   oPDF:DrawText( 3.5, 42, PadC( "CEP 13041-445 - Campinas-SP", nMaxCol - 82 ), Nil, 10, "Helvetica", Nil, Nil )
   oPDF:DrawText( 5.5, 42, PadC( "Vendas: (19) 3579-4488  -        9.7170-8006", nMaxCol - 95 ), Nil, 11, "Helvetica-Bold", Nil, Nil )
   oPDF:DrawText( 7.5, 42, PadC( "www.emporiodosofa.com", nMaxCol - 80 ), Nil, 10, "Helvetica", Nil, Nil )
   
   oPDF:DrawRetangle( 0, 117, 31, 11, Nil, Nil, Nil )  // box direito
   oPDF:DrawText( 1.5, 120, "Número do Pedido:", Nil, 10, "Helvetica", Nil, Nil )
   
   oPDF:DrawRetangle( 2, nMaxCol-29.5, 28, 3, Nil, Nil, Nil )  // box id pedido
   oPDF:DrawText( 3.7, nMaxCol-23, "00000001", Nil, 11, "Helvetica", Nil, Nil )

   oPDF:DrawText( 6.3, 118.5, "SAC (19) 2121-0231", Nil, 11, "Helvetica-Bold", Nil, Nil )
   oPDF:DrawText( 7.5, 118, "(Seg a Sex das 9h00 às 17h00)", Nil, 7.5, "Helvetica", Nil, Nil )

   oPDF:DrawRetangle( 9, 0, nMaxCol/4, 4, Nil, Nil, Nil )
   oPDF:DrawText( 10, 1, "Vendedor:", Nil, 8, "Helvetica", Nil, Nil )
   
   oPDF:DrawRetangle( 9, ( nMaxCol/4 )+1, nMaxCol/4, 4, Nil, Nil, Nil )
   oPDF:DrawText( 10, ( nMaxCol/4 )+2, "Condição de Pagamento:", Nil, 8, "Helvetica", Nil, Nil )
   
   oPDF:DrawRetangle( 9, ( nMaxCol/2 )+2, nMaxCol/4, 4, Nil, Nil, Nil )
   oPDF:DrawText( 10, ( nMaxCol/2 )+3, "Data da Venda:", Nil, 8, "Helvetica", Nil, Nil )
   
   oPDF:DrawRetangle( 9, ( nMaxCol- (nMaxCol/4) )+3, (nMaxCol/4)-3, 4, Nil, Nil, Nil )
   oPDF:DrawText( 10, ( nMaxCol- (nMaxCol/4) )+4, "Previsão de Entrega:", Nil, 8, "Helvetica", Nil, Nil )
   
   oPDF:DrawRetangle( 12.5, 0, nMaxCol, 13, Nil, Nil, Nil )

   oPDF:DrawText( 14, 1, "Cliente:", Nil, 9, "Helvetica", Nil, Nil )
   oPDF:DrawLine( 14.5, 0, 14.5, nMaxCol )

   oPDF:DrawText( 16, 1, "Endereço:", Nil, 9, "Helvetica", Nil, Nil )
   oPDF:DrawText( 16, (nMaxCol/2)+15, "Complemento:", Nil, 9, "Helvetica", Nil, Nil )
   oPDF:DrawLine( 16.5, 0, 16.5, nMaxCol )
   
   oPDF:DrawText( 18, 1, "Bairro:", Nil, 9, "Helvetica", Nil, Nil )
   oPDF:DrawText( 18, (nMaxCol/2)-15, "Cidade:", Nil, 9, "Helvetica", Nil, Nil )
   oPDF:DrawText( 18, (nMaxCol/2)+30, "Estado: SP", Nil, 9, "Helvetica", Nil, Nil )
   oPDF:DrawText( 18, (nMaxCol/2)+50, "CEP: 99999-999", Nil, 9, "Helvetica", Nil, Nil )
   oPDF:DrawLine( 18.5, 0, 18.5, nMaxCol )

   oPDF:DrawText( 20, 1, "Telefone:", Nil, 9, "Helvetica", Nil, Nil )
   oPDF:DrawText( 20, (nMaxCol/2)-15, "E-Mail:", Nil, 9, "Helvetica", Nil, Nil )
   oPDF:DrawLine( 20.5, 0, 20.5, nMaxCol )
   
   oPDF:DrawText( 22, 1, "RG/IE:", Nil, 9, "Helvetica", Nil, Nil )
   oPDF:DrawText( 22, (nMaxCol/2)-15, "CPF/CNPJ:", Nil, 9, "Helvetica", Nil, Nil )

   nLinha := 23
   nHightLin:=2.6

   nLenItem := 8
   nLenUnit := 14
   nLenDescont := 14
   nLenTotal := 18
   nLenDescri := ( nMaxCol - ( nLenItem + nLenUnit + nLenDescont + nLenTotal ) )
   
   For x=1 To 20
    
    oPDF:DrawRetangle( nLinha, 0, nLenItem, nHightLin, Nil, Nil, Nil )
    oPDF:DrawRetangle( nLinha, nLenItem, nLenDescri, nHightLin, Nil, Nil, Nil )
    oPDF:DrawRetangle( nLinha, nLenItem+nLenDescri, nLenUnit, nHightLin, Nil, Nil, Nil )
    oPDF:DrawRetangle( nLinha, nLenItem+nLenDescri+nLenUnit, nLenDescont, nHightLin, Nil, Nil, Nil )
    oPDF:DrawRetangle( nLinha, nLenItem+nLenDescri+nLenUnit+nLenDescont, nLenTotal, nHightLin, Nil, Nil, Nil )
    
    If ( x = 1 )
     oPDF:DrawText( nLinha+1.5, 1, "Qtd.", Nil, 10, "Helvetica", Nil, Nil )
     oPDF:DrawText( nLinha+1.5, nLenItem+1, "Descrição", Nil, 10, "Helvetica", Nil, Nil )
     oPDF:DrawText( nLinha+1.5, nLenItem+nLenDescri+1.5, "Vr. Unit.", Nil, 10, "Helvetica", Nil, Nil )
     oPDF:DrawText( nLinha+1.5, nLenItem+nLenDescri+nLenUnit+1, "Desconto", Nil, 10, "Helvetica", Nil, Nil )
     oPDF:DrawText( nLinha+1.5, nLenItem+nLenDescri+nLenUnit+nLenDescont+5, "Total", Nil, 10, "Helvetica", Nil, Nil )
    EndIf
    
    nLinha += 2

   Next
   
   oPDF:DrawRetangle( nLinha+.4, 00, 49, nHightLin, 1, Nil, Nil )
   oPDF:DrawRetangle( nLinha+.4, 50, 51, nHightLin, 1, Nil, Nil )
   oPDF:DrawRetangle( nLinha+.4, 102, 46, nHightLin, 1, Nil, Nil )
   
   oPDF:DrawText( nLinha+2, 5, "Total dos Itens: 99.999,99", Nil, 12, "Helvetica", Nil, Nil )
   oPDF:DrawText( nLinha+2, 54, "Total do Desconto: 99.999,99", Nil, 12, "Helvetica", Nil, Nil )
   oPDF:DrawText( nLinha+2, 103, "Total a Pagar  =>  99.999,99", Nil, 12, "Helvetica-Bold", Nil, Nil )
   
   nLinha += 4
   oPDF:DrawRetangle( nLinha-1, 0, nMaxCol, 29, Nil, Nil, Nil )
   
   cMsg := "* Confira as mercadorias no ato da entrega."
   oPDF:DrawText( nLinha+1, 2, cMsg, Nil, 9, "Helvetica-Oblique", Nil, Nil )

   cMsg := "* Prazo de entrega para produtos à pronta entrega: 7 dias úteis. Prazo de entrega para produtos por encomenda: 30 dias úteis."
   oPDF:DrawText( nLinha+2.5, 2, cMsg, Nil, 9, "Helvetica-Oblique", Nil, Nil )
   
   cMsg := ". Montagem terceirizada. É necessário que o cliente entre em contato com o montador no prazo máximo de 7 dias úteis a"
   oPDF:DrawText( nLinha+4.5, 2, cMsg, Nil, 9, "Helvetica-Oblique", Nil, Nil )
   cMsg := "partir da entrega do produto. A Montagem é cortesia da loja desde que efetuada no prazo descrito acima."
   oPDF:DrawText( nLinha+5.7, 2, cMsg, Nil, 9, "Helvetica-Oblique", Nil, Nil )
   
   cMsg := ". Não nos responsabilizamos por danos e avarias paredes/alvenaria, sistema hidráulico e elétrico da casa, nem por instalação de"
   oPDF:DrawText( nLinha+7.5, 2, cMsg, Nil, 9, "Helvetica-Oblique", Nil, Nil )
   cMsg := "produtos não adquiridos na própria loja. Na hipótese de efetuado esse serviço será de inteira responsabilidade do cliente e do"
   oPDF:DrawText( nLinha+8.7, 2, cMsg, Nil, 9, "Helvetica-Oblique", Nil, Nil )
   cMsg := "montador, sendo que a loja não responde por eventuais valores pagos nesses casos."
   oPDF:DrawText( nLinha+10, 2, cMsg, Nil, 9, "Helvetica-Oblique", Nil, Nil )

   cMsg := ". O prazo de garantia é de 90 dias a partir da data da entrega, conforme Artigo 26, Inciso II da Lei 8.078/90 (CDC)."
   oPDF:DrawText( nLinha+12.2, 2, cMsg, Nil, 9, "Helvetica-Oblique", Nil, Nil )

   cMsg := "* Não nos responsabilizamos por danos e avarias na entrega em apartamentos ou residências onde o produto não passe"
   oPDF:DrawText( nLinha+14.5, 2, cMsg, Nil, 9, "Helvetica-Oblique", Nil, Nil )
   cMsg := "  livremente, nem se subir ou descer escadas onde possam ocorrer avarias no produto."
   oPDF:DrawText( nLinha+15.7, 2, cMsg, Nil, 9, "Helvetica-Oblique", Nil, Nil )

   cMsg := ". Venda presencial. Não se aplica devolução por arrependimento previsto no artigo 49 da Lei 8.078/90 (CDC)."
   oPDF:DrawText( nLinha+18, 2, cMsg, Nil, 9, "Helvetica-Oblique", Nil, Nil )

   cMsg := ". O cancelamento desse pedido sem motivo justificado em lei, gerará multa de 20% para despesas administrativas."
   oPDF:DrawText( nLinha+20, 2, cMsg, Nil, 9, "Helvetica-Oblique", Nil, Nil )
   
   oPDF:DrawRetangle( 89, 00, nMaxCol, 6, Nil, Nil, Nil )
   oPDF:DrawText( 90, 1, "Observações:", Nil, 8, "Helvetica", Nil, Nil )
   
   oPDF:DrawRetangle( 94, 0, (nMaxCol/2), 9, 1, Nil, Nil )
   oPDF:DrawLine( 99, 2, 99, (nMaxCol/2)-2, Nil )
   oPDF:DrawText( 100, 2, PadC("Empório do Sofá",100), Nil, 8, "Helvetica", Nil, Nil )

   oPDF:DrawRetangle( 94, (nMaxCol/2)+1, (nMaxCol/2)-1, 9, 1, Nil, Nil )
   oPDF:DrawLine( 99, (nMaxCol/2)+3, 99, nMaxCol-2, Nil )
   oPDF:DrawText( 100, (nMaxCol/2)+3, PadC("Nome do Cliente",100), Nil, 8, "Helvetica", Nil, Nil )
   
   oPDF:End()

Return Nil

Function MyTempFile()
 Return "Venda" + "00000001" + ".PDF"