contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[57 len 589]
}



// =====================  Runtime code  =====================


address seriesFactoryAddress;
address owner;

function seriesFactory() {
    return seriesFactoryAddress
}

function owner() {
    return owner
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_2b94c2c0(?) {
    require owner == msg.sender
    seriesFactoryAddress = arg1
}

function withdraw() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    delegate seriesFactoryAddress with:
       funct call.data[0 len 4]
         gas gas_remaining - 10000 wei
        args call.data[4 len calldata.size - 4]
    return delegate.return_data[0 len 64]
}



}
