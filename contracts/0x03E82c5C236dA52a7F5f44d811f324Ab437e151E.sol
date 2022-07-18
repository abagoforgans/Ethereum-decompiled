contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sendTo(address arg1) payable {
    require calldata.size - 4 >= 32
    create contract with callvalue wei
                    code: code.data[246 len 76], arg1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
}



}
