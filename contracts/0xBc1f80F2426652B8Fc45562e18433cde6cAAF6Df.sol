contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
uint8 stor3; offset 160
address stor3;
mapping of uint8 stor5;

function _fallback() payable {
    uint8(stor3.field_160) = 18
    require not msg.value
    stor0 = msg.sender
    require code.data[3161 len 20]
    require code.data[3193 len 20]
    address(stor3.field_0) = code.data[3193 len 20]
    stor2 = code.data[3161 len 20]
    stor5[address(msg.sender)] = 1
    return code.data[248 len 2901]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
address sub_1d2e1cecAddress;
uint8 decimals; offset 160
address clcAddress;
array of struct items;
mapping of uint8 stor5;

function getItemsLength() {
    require owner == msg.sender
    return items.length
}

function sub_1d2e1cec(?) {
    return sub_1d2e1cecAddress
}

function decimals() {
    return decimals
}

function clc() {
    return clcAddress
}

function sub_5132115b(?) {
    return bool(stor5[arg1])
}

function owner() {
    return owner
}

function items(uint256 arg1) {
    require arg1 < items.length
    return items[arg1].field_0, items[arg1].field_256, items[arg1].field_512, bool(items[arg1].field_768)
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function setCLC(address arg1) {
    require owner == msg.sender
    clcAddress = arg1
}

function addSetter(address arg1) {
    require owner == msg.sender
    stor5[address(arg1)] = 1
}

function setClout(address arg1) {
    require owner == msg.sender
    sub_1d2e1cecAddress = arg1
}

function removeSetter(address arg1) {
    require owner == msg.sender
    stor5[address(arg1)] = 0
}

function acceptOwnership() {
    if newOwner == msg.sender:
        owner = newOwner
        newOwner = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    newOwner = arg1
}

function sub_719c4321(?) {
    require owner == msg.sender
    if arg1 >= items.length:
        return 0
    return bool(items[arg1].field_768)
}

function sub_0f9ad348(?) {
    require owner == msg.sender
    s = 0
    idx = 0
    while idx < items.length:
        mem[0] = 4
        if items[idx].field_0 != arg1:
            s = (4 * idx) + sha3(4)
            idx = idx + 1
            continue 
        return idx
    return items.length
}

function sub_3d69c198(?) {
    require 1 == bool(stor5[address(msg.sender)])
    require arg1
    require arg2 > 0
    require arg3 > 0
    items.length++
    if not items.length <= items.length + 1:
        idx = 4 * items.length + 1
        while 4 * items.length > idx:
            items[idx].field_0 = 0
            items[idx].field_256 = 0
            items[idx].field_512 = 0
            items[idx].field_768 = 0
            idx = idx + 4
            continue 
    items[items.length].field_0 = arg1
    items[items.length].field_256 = arg2
    items[items.length].field_512 = arg3
    items[items.length].field_768 = 0
}

function sub_0b179835(?) {
    require owner == msg.sender
    if arg1 >= items.length:
        return 0
    if items[arg1].field_768:
        return 0
    require ext_code.size(sub_1d2e1cecAddress)
    call sub_1d2e1cecAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args items[arg1].field_0, items[arg1].field_256
    require ext_call.success
    if items[arg1].field_256 != ext_call.return_data[0]:
        return 0
    require ext_code.size(clcAddress)
    call clcAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args items[arg1].field_0, items[arg1].field_512
    require ext_call.success
    if items[arg1].field_512 != ext_call.return_data[0]:
        return 0
    items[arg1].field_768 = 1
    return 1
}

function issue(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    s = 0
    idx = arg1
    while idx <= arg2:
        require idx < items.length
        mem[0] = 4
        if bool(items[idx].field_768) != 1:
            mem[100] = items[idx].field_0
            mem[132] = items[idx].field_256
            require ext_code.size(sub_1d2e1cecAddress)
            call sub_1d2e1cecAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args items[idx].field_0, items[idx].field_256
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            if items[idx].field_256 == ext_call.return_data[0]:
                mem[100] = items[idx].field_0
                mem[132] = items[idx].field_512
                require ext_code.size(clcAddress)
                call clcAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args items[idx].field_0, items[idx].field_512
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                if items[idx].field_512 == ext_call.return_data[0]:
                    items[idx].field_768 = 1
        s = (4 * idx) + sha3(4)
        idx = idx + 1
        continue 
}



}
