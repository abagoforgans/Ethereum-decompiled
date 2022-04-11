contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1043 len 20]
    stor2 = code.data[1075 len 20]
    return code.data[150 len 881]
}



// =====================  Runtime code  =====================


const isFinalizeAgent = 1

const isSane = 1


address owner;
address tokenAddress;
address crowdsaleAddress;

function owner() {
    return owner
}

function crowdsale() {
    return crowdsaleAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert 
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function finalizeCrowdsale() {
    if crowdsaleAddress != msg.sender:
        require owner == msg.sender
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0x518ab2a8 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 50 wei
        args owner, ext_call.return_data[0] / 100
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.'_A-O' with:
         gas gas_remaining - 50 wei
    require ext_call.success
}



}
