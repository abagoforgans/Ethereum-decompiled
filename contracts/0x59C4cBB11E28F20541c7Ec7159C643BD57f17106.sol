contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;

function _fallback() payable {
    address(stor0.field_0) = msg.sender
    uint8(stor0.field_160) = 0
    require not msg.value
    return code.data[65 len 1735]
}



// =====================  Runtime code  =====================


const getNow = block.timestamp


uint8 sub_84f5a87a; offset 160
uint128 stor0; offset 160
address owner;
mapping of struct balance;
mapping of uint8 stor2;

function getBalance() {
    return balance[address(msg.sender)].field_0
}

function sub_6669a2d0(?) {
    return balance[address(msg.sender)].field_256
}

function sub_84f5a87a(?) {
    return bool(sub_84f5a87a)
}

function owner() {
    return owner
}

function getProxy() {
    return balance[address(msg.sender)].field_512
}

function Owned() {
    owner = msg.sender
}

function _fallback() payable {
    revert
}

function sub_2098bc0f(?) {
    require owner == msg.sender
    stor0 = Mask(96, 0, arg1)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function redeemFunds() {
    if sub_84f5a87a:
        require owner == msg.sender
    require balance[address(msg.sender)].field_0
    balance[address(msg.sender)].field_0 = 0
    balance[address(msg.sender)].field_256 = 0
    call msg.sender with:
       value balance[address(msg.sender)].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_ea5ae4d4(?) {
    if stor2[address(msg.sender)]:
        require owner == msg.sender
    if sub_84f5a87a:
        require owner == msg.sender
    if balance[address(arg1)].field_512 != msg.sender:
        require owner == msg.sender
    stor2[address(msg.sender)] = 1
    call arg2 with:
       funct arg4
       value 10^18 * arg3 wei
         gas gas_remaining - 34710 wei
        args Mask(224, 0, arg4)
    require ext_call.success
    stor2[address(msg.sender)] = 0
}

function sub_08bea870(?) payable {
    if sub_84f5a87a:
        require owner == msg.sender
    if not balance[address(msg.sender)].field_0:
        balance[address(msg.sender)].field_0 = 10^18 * msg.value
    else:
        require (10^18 * msg.value) + balance[address(msg.sender)].field_0 >= balance[address(msg.sender)].field_0
        require (10^18 * msg.value) + balance[address(msg.sender)].field_0 >= 10^18 * msg.value
        balance[address(msg.sender)].field_0 += 10^18 * msg.value
    balance[address(msg.sender)].field_512 = arg1
    balance[address(msg.sender)].field_256 = arg2 + block.timestamp
}



}
