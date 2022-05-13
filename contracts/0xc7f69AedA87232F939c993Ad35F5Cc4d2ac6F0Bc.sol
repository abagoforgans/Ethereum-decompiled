contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function createForwarder(address arg1) {
    create contract with 0 wei
                    code: 0x602e600c600039602e6000f3366000600037610100600036600073, arg1, 109955974934425622296920307
    require ext_code.size(create.new_address)
    emit 0xe3b17932: address(create.new_address), arg1
    return address(create.new_address)
}



}
