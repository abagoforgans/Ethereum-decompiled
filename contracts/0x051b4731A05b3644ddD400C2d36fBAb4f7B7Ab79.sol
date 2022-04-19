contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    mem[96] = 0
    mem[128] = 10
    mem[160] = 20
    mem[192] = 30
    mem[224] = 50
    mem[256] = 50
    s = 0
    idx = 96
    while 288 > idx:
        stor2 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor2
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 6
    s = 2
    while idx:
        uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-4 * None + 3 / 32) + (None * None + 3 / 32) + 2
    while 3 > idx:
        uint8(stor[idx]) = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = code.data[2446 len 20]
    stor1 = code.data[2446 len 20]
    return code.data[382 len 2052]
}



// =====================  Runtime code  =====================


address controllerAddress;
address stor1;
address stor3;
uint256 stor3;

function controller() {
    return controllerAddress
}

function destruct() {
    require controllerAddress == msg.sender
    selfdestruct(controllerAddress)
}

function _fallback() payable {
    revert
}

function setPermissionByAddress(uint8 arg1, address arg2) {
    require ext_code.size(address(stor3))
    call address(stor3).setAccessControl(address rg1, address rg2, uint8 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg2), arg1
    require ext_call.success
}

function setContracts() {
    require controllerAddress == msg.sender
    require ext_code.size(stor1)
    call stor1.getContract(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args 'FD.Database'
    require ext_call.success
    uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
}

function checkPermission(uint8 arg1, address arg2) {
    require ext_code.size(address(stor3))
    call address(stor3).getAccessControl(address rg1, address rg2, uint8 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg2), arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function setPermissionByAddress(uint8 arg1, address arg2, bool arg3) {
    require ext_code.size(address(stor3))
    call address(stor3).setAccessControl(address rg1, address rg2, uint8 rg3, bool rg4) with:
         gas gas_remaining - 710 wei
        args 0, uint32(msg.sender), address(arg2), arg1 << 248, arg3
    require ext_call.success
}

function setPermissionById(uint8 arg1, bytes32 arg2) {
    require ext_code.size(stor1)
    call stor1.getContract(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_code.size(address(stor3))
    call address(stor3).setAccessControl(address rg1, address rg2, uint8 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(ext_call.return_data[0]), arg1
    require ext_call.success
}

function setPermissionById(uint8 arg1, bytes32 arg2, bool arg3) {
    require ext_code.size(stor1)
    call stor1.getContract(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_code.size(address(stor3))
    call address(stor3).setAccessControl(address rg1, address rg2, uint8 rg3, bool rg4) with:
         gas gas_remaining - 710 wei
        args 0, uint32(msg.sender), address(ext_call.return_data[0]), arg1 << 248, arg3
    require ext_call.success
}

function fixPermission(address arg1, address arg2, uint8 arg3, bool arg4) {
    require ext_code.size(stor1)
    call stor1.getContract(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args 'FD.Emergency'
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(address(stor3))
    call address(stor3).setAccessControl(address rg1, address rg2, uint8 rg3, bool rg4) with:
         gas gas_remaining - 710 wei
        args 0, 0, address(arg2), arg3 << 248, arg4
    require ext_call.success
}



}
