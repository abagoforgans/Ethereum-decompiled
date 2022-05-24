contract main {




// =====================  Runtime code  =====================


address factoryAddress;

function factory() {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function setFactory(address arg1) {
    factoryAddress = arg1
}

function execute() payable {
    create contract with 0 wei
                    code: code.data[561 len 1254], factoryAddress, msg.sender
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
}



}
