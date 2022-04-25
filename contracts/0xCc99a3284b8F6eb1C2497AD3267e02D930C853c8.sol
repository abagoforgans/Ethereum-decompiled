contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
mapping of uint256 stor6;

function _fallback() {
    require address(code.data[5674 len 32])
    stor1 = address(code.data[5674 len 32])
    bool(stor2.length) = 0
    stor2.length.field_1 = 24
    stor2.length.field_8 = 'SwissCryptoExchangeToken' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 5
    stor3.length.field_8 = '1.0.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 1
    stor5 = block.timestamp
    require code.data[5642 len 32] > 0
    require address(code.data[5610 len 32])
    stor6[address(code.data[5610 len 32])] = code.data[5642 len 32]
    stor0 = code.data[5642 len 32]
    return code.data[722 len 4888]
}



// =====================  Runtime code  =====================


const decimals = 0

const symbol = 'SCX'


uint256 totalSupply;
uint8 stor1; offset 160
uint128 stor1; offset 160
address managerAddress;
array of uint256 name;
array of uint256 version;
uint256 identifier;
uint256 createdAt;
mapping of uint256 balanceOf;

function active() {
    return bool(uint8(stor1.field_160))
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function manager() {
    return managerAddress
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function identifier() {
    return identifier
}

function createdAt() {
    return createdAt
}

function _fallback() payable {
    revert
}

function activate() {
    require msg.sender == managerAddress
    require managerAddress
    require not uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 1
    emit ActivatedContract(block.timestamp);
}

function deactivate() {
    require msg.sender == managerAddress
    require managerAddress
    require uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 0
    emit DeactivatedContract(block.timestamp);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require uint8(stor1.field_160)
    require ext_code.size(managerAddress)
    call managerAddress.0xd2b73cea with:
         gas gas_remaining - 710 wei
        args 101
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor1.field_160)
    require ext_code.size(managerAddress)
    call managerAddress.0xd2b73cea with:
         gas gas_remaining - 710 wei
        args 101
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(uint256 arg1) {
    require uint8(stor1.field_160)
    require ext_code.size(managerAddress)
    call managerAddress.0xd2b73cea with:
         gas gas_remaining - 710 wei
        args 101
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(managerAddress)
    call managerAddress.0xd2b73cea with:
         gas gas_remaining - 710 wei
        args 101
    require ext_call.success
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    require balanceOf[ext_call.return_data[12 len 20]] + arg1 >= balanceOf[ext_call.return_data[12 len 20]]
    balanceOf[address(ext_call.return_data[0])] = balanceOf[ext_call.return_data[12 len 20]] + arg1
    emit Mint(arg1, address(ext_call.return_data[0]));
    emit Transfer(arg1, 0, address(ext_call.return_data[0]));
    return 1
}



}
