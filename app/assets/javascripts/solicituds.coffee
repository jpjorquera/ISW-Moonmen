$ ->
    $('#envio_solicitud_button').click (event) ->
        
        event.preventDefault()
        materiales = {"materiales": get_materiales()}
        $form = $('.container').find('form')
        console.log(materiales)
        $.ajax $form.attr('action'),
            type: 'POST'
            data: JSON.stringify(materiales)
            contentType: "application/json"
            dataType: "json"
            success: (response) ->
                console.log 'success'
            error: (jqHXR, textStatus) ->
                console.log jqHXR.responseText
            
    
get_materiales = () ->
    materiales = []
    table = $("#materiales tbody")
    table.find('tr').each (index, row) ->
        id = ""
        material = ""
        cantidad = ""
        $(row).find('td').each (index, item) ->
            if(index == 0)
                id = $(item).data("idmaterial")
                material = item.textContent
            if(index == 1)
                cantidad = item.textContent
            
        materiales.push({"id": id, "material": material, "cantidad": cantidad})
    return materiales
    