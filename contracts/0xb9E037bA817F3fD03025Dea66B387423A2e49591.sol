contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[476 len 20]
    stor1 = msg.sender
    return code.data[105 len 359]
}



// =====================  Runtime code  =====================


address currentVersionAddress;
address owner;

function owner() {
    return owner
}

function currentVersion() {
    return currentVersionAddress
}

function update(address arg1) {
    require owner == msg.sender
    currentVersionAddress = arg1
}

function _fallback() {
    delegate currentVersionAddress with:
       funct call.data[0 len 4]
         gas gas_remaining - 50 wei
        args call.data[4 len calldata.size - 4]
    require delegate.return_code
    require delegate.return_data[0]
}



}
