contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[56 len 2451]
}



// =====================  Runtime code  =====================


uint8 contractState; offset 160
address owner;
address stor1;
address sub_cf2fec4cAddress;
uint256 stor2;

function contractState() {
    require contractState <= 1
    return contractState
}

function owner() {
    return owner
}

function sub_cf2fec4c(?) {
    return address(sub_cf2fec4cAddress)
}

function kill() {
    if owner != msg.sender:
    contractState = 0
    selfdestruct(owner)
}

function _fallback() payable {
    revert 
}

function approve(address arg1, uint256 arg2) {
    revert 
}

function allowance(address arg1, address arg2) {
    revert 
}

function isContract(address arg1) {
    return (ext_code.size(arg1) > 1)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    revert 
}

function sub_fbbc1171(?) {
    if owner == msg.sender:
        contractState = 0
}

function activateContract() {
    if owner == msg.sender:
        contractState = 1
}

function changeOwner(address arg1) {
    if owner == msg.sender:
        owner = arg1
        emit OwnerChanged(owner, arg1);
}

function totalSupply() {
    require ext_code.size(stor1)
    call stor1.getTotalSupply() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function getFeePercent() {
    require ext_code.size(stor1)
    call stor1.0xbe74264d with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[30 len 2]
}

function balanceOf(address arg1) {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_0035f141(?) {
    if owner == msg.sender:
        require contractState <= 1
        if not contractState:
            stor1 = arg1
            require ext_code.size(arg1)
            call arg1.0x3e4ac25a with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
}

function setFeePercent(uint16 arg1) {
    if owner == msg.sender:
        require ext_code.size(stor1)
        call stor1.0xbe74264d with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(stor1)
        call stor1.setFeePercent(uint16 rg1) with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
        emit 0x4958416b: ext_call.return_data[0] << 240, arg1
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(stor1)
    call stor1.0x977c9e33 with:
         gas gas_remaining - 50 wei
        args 0, uint32(msg.sender), address(arg1), arg2, 0
    require ext_call.success
    if ext_call.return_data[0] > 0:
        emit Transfer(ext_call.return_data[0], msg.sender, arg1);
        emit Transfer((arg2 - ext_call.return_data[0]), msg.sender, address(sub_cf2fec4cAddress));
        return 0
    else:
        return 0
}



}
