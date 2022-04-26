contract main {


// =======================  Init code  ======================


address stor0;
address stor4; offset 8

function _fallback() {
    stor0 = msg.sender
    require code.data[2928 len 20]
    stor4 = code.data[2928 len 20]
    return code.data[138 len 2778]
}



// =====================  Runtime code  =====================


const sub_d35c50e3(?) = 35


address owner;
address proposedOwner;
uint256 stor1;
mapping of struct sub_46b22dcd;
array of struct sub_3ca017f7;
uint8 status;
address stor4; offset 8
address sub_77f6599bAddress;
uint256 stor5;

function status() {
    require status <= 2
    return status
}

function getGranteesSize() {
    return sub_3ca017f7.length
}

function sub_3ca017f7(?) {
    require arg1 < sub_3ca017f7.length
    return sub_3ca017f7[arg1].field_0
}

function sub_46b22dcd(?) {
    return sub_46b22dcd[arg1].field_0, bool(sub_46b22dcd[arg1].field_256)
}

function sub_77f6599b(?) {
    return address(sub_77f6599bAddress)
}

function owner() {
    return owner
}

function proposedOwner() {
    return address(proposedOwner)
}

function _fallback() payable {
    revert
}

function initiateOwnershipTransfer(address arg1) {
    require msg.sender == owner
    address(proposedOwner) = arg1
    emit OwnershipTransferInitiated(arg1);
    return 1
}

function completeOwnershipTransfer() {
    require address(proposedOwner) == msg.sender
    owner = address(proposedOwner)
    address(proposedOwner) = 0
    emit OwnershipTransferCompleted(address(proposedOwner));
    return 1
}

function lock() {
    require msg.sender == owner
    require status <= 2
    require not status
    require sub_3ca017f7.length > 0
    status = 1
    require ext_code.size(0 or stor4)
    call 0 or stor4.adminAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    uint256(stor5) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor5))
    require ext_code.size(stor4)
    call stor4.adminAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == owner
    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    emit OwnershipTransferInitiated(ext_call.return_data[12 len 20]);
    emit Locked()
    return 1
}

function addGrantableAllocation(address arg1, uint256 arg2, bool arg3) {
    require msg.sender == owner
    require status <= 2
    require not status
    require arg1
    require arg2 > 0
    require sub_3ca017f7.length < 35
    require not sub_46b22dcd[address(arg1)].field_0
    sub_46b22dcd[address(arg1)].field_0 = arg2
    sub_46b22dcd[address(arg1)].field_256 = uint8(arg3)
    sub_3ca017f7.length++
    if not sub_3ca017f7.length <= sub_3ca017f7.length + 1:
        idx = sub_3ca017f7.length + 1
        while sub_3ca017f7.length > idx:
            sub_3ca017f7[idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_3ca017f7[sub_3ca017f7.length].field_0 = arg1
    emit GrantableAllocationAdded(arg2, arg3, arg1);
    return 1
}

function getGrantees() {
    if not sub_3ca017f7.length:
        mem[(32 * sub_3ca017f7.length) + 160] = 32
        mem[(32 * sub_3ca017f7.length) + 192] = sub_3ca017f7.length
        mem[(32 * sub_3ca017f7.length) + 224 len floor32(sub_3ca017f7.length)] = mem[160 len floor32(sub_3ca017f7.length)]
        return memory
          from (32 * sub_3ca017f7.length) + 160
           len (96 * sub_3ca017f7.length) + 64
    mem[160] = address(sub_3ca017f7.field_0)
    idx = 160
    s = 0
    while (32 * sub_3ca017f7.length) + 128 > idx:
        mem[idx + 32] = sub_3ca017f7[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_3ca017f7.length) + 224 len floor32(sub_3ca017f7.length)] = mem[160 len floor32(sub_3ca017f7.length)]
    return Array(len=sub_3ca017f7.length, data=mem[160 len floor32(sub_3ca017f7.length)], mem[(32 * sub_3ca017f7.length) + floor32(sub_3ca017f7.length) + 224 len (32 * sub_3ca017f7.length) - floor32(sub_3ca017f7.length)]), 
}

function grantGrantableAllocations() {
    require msg.sender == owner
    require status <= 2
    require status == 1
    require ext_code.size(stor4)
    call stor4.adminAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    s = 0
    idx = 0
    while idx < sub_3ca017f7.length:
        mem[32] = 2
        mem[132] = sub_46b22dcd[stor3[idx].field_0].field_0
        mem[164] = bool(sub_46b22dcd[stor3[idx].field_0].field_256)
        require ext_code.size(stor4)
        call stor4.grantAllocation(address rg1, uint256 rg2, bool rg3) with:
             gas gas_remaining - 710 wei
            args sub_3ca017f7[idx].field_0, sub_46b22dcd[stor3[idx].field_0].field_0, bool(sub_46b22dcd[stor3[idx].field_0].field_256)
        require ext_call.success
        require ext_call.return_data[0]
        require idx < sub_3ca017f7.length
        mem[0] = 3
        mem[96] = sub_46b22dcd[stor3[idx].field_0].field_0
        mem[128] = bool(sub_46b22dcd[stor3[idx].field_0].field_256)
        emit GrantableAllocationGranted(sub_46b22dcd[stor3[idx].field_0].field_0, bool(sub_46b22dcd[stor3[idx].field_0].field_256), sub_3ca017f7[idx].field_0);
        s = sha3(sub_3ca017f7[idx].field_0, 2)
        idx = idx + 1
        continue 
    require ext_code.size(stor4)
    call stor4.setAdminAddress(address rg1) with:
         gas gas_remaining - 710 wei
        args address(sub_77f6599bAddress)
    require ext_call.success
    status = 2
    return 1
}



}
