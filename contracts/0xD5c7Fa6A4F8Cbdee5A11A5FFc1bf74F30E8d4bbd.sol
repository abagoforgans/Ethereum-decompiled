contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1521]




// =====================  Runtime code  =====================


uint256 minimalDeposit;
uint256 sub_694e3f85;
uint256 currentAmount;
mapping of uint8 stor3;
mapping of struct save;

function getBalance() {
    return currentAmount
}

function sub_2a090de1(?) {
    return bool(stor3[arg1])
}

function save(address arg1) {
    return save[arg1].field_0, save[arg1].field_256, save[arg1].field_512, bool(save[arg1].field_768), save[arg1].field_776
}

function sub_694e3f85(?) {
    return sub_694e3f85
}

function minimalDeposit() {
    return minimalDeposit
}

function sub_8c2d0aee(?) {
    return save[address(arg1)].field_512
}

function currentAmount() {
    return currentAmount
}

function _fallback() payable {
    save[address(msg.sender)].field_0 = block.timestamp
    save[address(msg.sender)].field_256 = block.timestamp + (4320 * 24 * 3600)
    save[address(msg.sender)].field_512 += msg.value
    save[address(msg.sender)].field_768 = 0
    save[address(msg.sender)].field_776 = Mask(248, 0, msg.sender)
    sub_694e3f85++
    currentAmount += msg.value
    stor3[address(msg.sender)] = 1
}

function sub_9c440161(?) payable {
    require stor3[address(msg.sender)]
    require save[address(msg.sender)].field_776 == msg.sender
    require block.timestamp >= save[address(msg.sender)].field_256
    require save[address(msg.sender)].field_512 >= arg1
    require arg1
    save[address(msg.sender)].field_512 -= arg1
    currentAmount -= arg1
    save[address(msg.sender)].field_768 = 1
    call save[address(msg.sender)].field_776 with:
       value arg1 wei
         gas gas_remaining - 34050 wei
    require ext_call.success
}



}
