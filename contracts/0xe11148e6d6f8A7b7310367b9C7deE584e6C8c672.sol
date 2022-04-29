contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[1072 len 20]
    return code.data[84 len 976]
}



// =====================  Runtime code  =====================


address settingsAddress;

function settings() {
    return settingsAddress
}

function _fallback() payable {
    revert
}

function create() {
    create contract with 0 wei
                    code: code.data[366 len 567], settingsAddress
    require create.new_address
    emit 0xef4ab4f3: address(create.new_address)
}



}
