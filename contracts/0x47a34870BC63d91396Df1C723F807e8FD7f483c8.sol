contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address sub_7e44c294;
mapping of uint8 stor2;

function sub_7e44c294(?) {
    return sub_7e44c294[arg1]
}

function addresses(address arg1) {
    return bool(stor2[arg1])
}

function owner() {
    return owner
}

function getTrader(uint8 arg1) {
    return sub_7e44c294[arg1 << 248]
}

function isValidTraderAddress(address arg1) {
    return bool(stor2[address(arg1)])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function removeTrader(uint8 arg1) {
    require msg.sender == owner
    stor2[stor1[arg1 << 248]] = 0
    sub_7e44c294[arg1 << 248] = 0
}

function sub_d6d6e8bd(?) {
    require msg.sender == owner
    require ext_code.size(arg2)
    call arg2.getProtocol() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 == ext_call.return_data[31 len 1]
    sub_7e44c294[arg1 << 248] = arg2
    stor2[address(arg2)] = 1
}



}
