contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor5; offset 8
mapping of uint256 stor8;
uint256 stor9;
uint256 stor10;
uint128 stor12; offset 160

function _fallback() payable {
    stor12 = 0
    require not msg.value
    mem[96 len -6814] = code.data[7394 len -6814]
    mem[64] = -6718
    stor0 = msg.sender
    if mem[160]:
        require mem[160] >= mem[128]
    stor2[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor8[address(msg.sender)] = mem[128]
    stor9 = mem[128]
    stor10 = mem[160]
    stor3[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor4[] = Array(len=mem[mem[256] + 96], data=mem[mem[256] + 128 len mem[mem[256] + 96]])
    uint8(stor5.field_0) = mem[255 len 1]
    Mask(248, 0, stor5.field_8) = 0
    return code.data[580 len 6814]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 version;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
address peonyAddress;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
uint256 totalSupply;
uint256 totalSupplyLimit;
address recordAddress;
uint8 stor12; offset 160
uint128 stor12; offset 160
address stor12;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function recordAddress() {
    return recordAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function totalSupplyLimit() {
    return totalSupplyLimit
}

function peony() {
    return peonyAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setPeonyAddress(address arg1) {
    require msg.sender == owner
    require arg1
    peonyAddress = arg1
    return 1
}

function setEnableRecord(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor12.field_160) = Mask(96, 0, arg1)
    return arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setRecordAddress(address arg1) {
    require msg.sender == owner
    require arg1
    address(stor12.field_0) = arg1
    recordAddress = arg1
    return 1
}

function consume(uint256 arg1) {
    require peonyAddress
    require msg.sender == peonyAddress
    require arg1 <= balanceOf[stor0]
    require balanceOf[stor0] - arg1 >= 0
    require arg1 <= totalSupply
    require totalSupply - arg1 >= 0
    require arg1 <= balanceOf[stor0]
    balanceOf[stor0] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    return 1
}

function produce(uint256 arg1) {
    require peonyAddress
    require msg.sender == peonyAddress
    if totalSupplyLimit:
        require totalSupply + arg1 >= totalSupply
        require totalSupply + arg1 <= totalSupplyLimit
    require balanceOf[stor0] + arg1 >= balanceOf[stor0]
    balanceOf[stor0] += arg1
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if bool(uint8(stor12.field_160)) == 1:
        if recordAddress:
            require 10^decimals
            idx = 0
            while idx < arg2 / 10^decimals:
                mem[100] = msg.sender
                mem[132] = arg1
                require ext_code.size(address(stor12.field_0))
                call address(stor12.field_0).record(address rg1, address rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, arg1
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                idx = idx + 1
                continue 
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if bool(uint8(stor12.field_160)) == 1:
        if recordAddress:
            require 10^decimals
            idx = 0
            while idx < arg3 / 10^decimals:
                mem[100] = arg1
                mem[132] = arg2
                require ext_code.size(address(stor12.field_0))
                call address(stor12.field_0).record(address rg1, address rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), arg2
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                idx = idx + 1
                continue 
    return 1
}



}
