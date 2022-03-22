contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    stor1 = code.data[1962 len 32]
    stor2 = code.data[1994 len 32]
    stor3 = code.data[2026 len 32] or Mask(96, 160, stor3)
    stor4 = code.data[2058 len 32]
    stor5 = code.data[2090 len 32]
    return code.data[109 len 1853]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address sub_2757d570Address;
uint256 stor1;
uint256 sub_371fa854;
address sub_99b24e0aAddress;
uint256 stor3;
uint256 sub_237b3a10;
uint256 transferAmount;

function sub_237b3a10(?) payable {
    return sub_237b3a10
}

function sub_2757d570(?) payable {
    return address(sub_2757d570Address)
}

function sub_371fa854(?) payable {
    return sub_371fa854
}

function transferAmount() payable {
    return transferAmount
}

function owner() payable {
    return address(owner)
}

function sub_99b24e0a(?) payable {
    return address(sub_99b24e0aAddress)
}

function sub_8bcb7961(?) payable {
    if address(owner) == msg.sender:
        sub_237b3a10 = arg1
}

function setDao(address arg1) payable {
    if address(owner) == msg.sender:
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function changeOwner(address arg1) payable {
    if address(owner) == msg.sender:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function vote() payable {
    if address(owner) == msg.sender:
        call address(sub_2757d570Address).vote(uint256 rg1, bool rg2) with:
             gas gas_remaining - 25050 wei
            args sub_371fa854, 1
        require ext_call.success
}

function split() payable {
    if address(owner) == msg.sender:
        call address(sub_2757d570Address).splitDAO(uint256 rg1, address rg2) with:
             gas gas_remaining - 25050 wei
            args sub_371fa854, address(sub_99b24e0aAddress)
        require ext_call.success
}

function sub_43902c87(?) payable {
    if address(owner) == msg.sender:
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
        sub_371fa854 = arg2
        uint256(stor3) = arg3 or Mask(96, 160, uint256(stor3))
        sub_237b3a10 = arg4
        transferAmount = arg5
}

function transfer(address arg1, uint256 arg2) payable {
    if address(owner) != msg.sender:
        return 0
    call address(sub_2757d570Address).0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function newProposal(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5, bool arg6) payable {
    if address(owner) != msg.sender:
        return 0
    call address(sub_2757d570Address).0x612e45a3 with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg3.length + 224, arg5, arg6
    require ext_call.success
    return ext_call.return_data[0]
}

function _fallback() payable {
    if sub_237b3a10 > 1:
        call address(sub_2757d570Address).splitDAO(uint256 rg1, address rg2) with:
             gas gas_remaining - 25050 wei
            args sub_371fa854, address(sub_99b24e0aAddress)
    else:
        if sub_237b3a10 != 1:
            return 1
        if transferAmount <= 0:
            return 1
        call address(sub_2757d570Address).0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args address(owner), transferAmount
    require ext_call.success
    sub_237b3a10--
    return 0
}

function sub_8c0c0cbe(?) payable {
    mem[128 len arg4.length] = arg4[all]
    if msg.sender == address(owner):
        mem[ceil32(arg4.length) + 128 len arg4.length] = arg4[all]
        if not arg4.length % 32:
            call arg1 with:
               value arg2 wei
                 gas arg3 wei
                args arg4[all]
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + 128] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
            call arg1.mem[ceil32(arg4.length) + 128 len 4] with:
               value arg2 wei
                 gas arg3 wei
                args mem[ceil32(arg4.length) + 132 len floor32(arg4.length) + 28]
}



}
