contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor4;
address stor5;
address stor6;

function _fallback() payable {
    stor0 = 0xb40d0312bac389ae0a05053020aac80c9237358b
    stor1 = 0x72d48d0082fb0f7f01fc4b215651cc55cb25c81a
    stor2 = 0x3f593a15eb60672687c32492b62ed3e10e149ec6
    stor4 = stor0
    stor5 = stor1
    stor6 = stor2
    return code.data[440 len 5063]
}



// =====================  Runtime code  =====================


const owner = msg.sender


address sub_113b67c9Address;
uint256 stor0;
address sub_efc2931fAddress;
uint256 stor1;
address sub_00b1d5e9Address;
uint256 stor2;
address sub_8ae8a1a5Address;
uint256 stor3;
address stor4;
address stor5;
address stor6;
address stor7;

function sub_00b1d5e9(?) payable {
    return address(sub_00b1d5e9Address)
}

function sub_113b67c9(?) payable {
    return address(sub_113b67c9Address)
}

function sub_8ae8a1a5(?) payable {
    return address(sub_8ae8a1a5Address)
}

function sub_efc2931f(?) payable {
    return address(sub_efc2931fAddress)
}

function _fallback() payable {
  stop
}

function cashOut() payable {
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 0 wei
    require ext_call.success
}

function getMyMsg() payable {
    call stor4.0xb484e532 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function getMyPlayerID() payable {
    call stor4.0xc003b082 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_a6857823(?) payable {
    require msg.sender == msg.sender
    uint256(stor3) = arg1 or Mask(96, 160, uint256(stor3))
    stor7 = address(sub_8ae8a1a5Address)
}

function deposit() payable {
    require msg.sender == msg.sender
    call stor4.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining - 34050 wei
    require ext_call.success
}

function withdraw(uint256 arg1) payable {
    require msg.sender == msg.sender
    call stor4.0x2e1a7d4d with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
}

function buyUnit(uint256 arg1, uint256 arg2) payable {
    require msg.sender == msg.sender
    call stor5.0x4b8772c1 with:
         gas gas_remaining - 25050 wei
        args arg1, arg2
    require ext_call.success
}

function buyBuilding(uint256 arg1, uint256 arg2) payable {
    require msg.sender == msg.sender
    call stor5.0xe75528cc with:
         gas gas_remaining - 25050 wei
        args arg1, arg2
    require ext_call.success
}

function moveUnits(uint256 arg1, uint256 arg2, uint256[] arg3) payable {
    require msg.sender == msg.sender
    call stor5.0x231944e2 with:
         gas gas_remaining - 25050 wei
        args arg1, arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len 32 * arg3.length])
    require ext_call.success
}

function sub_47b6fc6f(?) payable {
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    stor4 = address(sub_113b67c9Address)
    uint256(stor1) = arg2 or Mask(96, 160, uint256(stor1))
    stor5 = address(sub_efc2931fAddress)
    uint256(stor2) = arg3 or Mask(96, 160, uint256(stor2))
    stor6 = address(sub_00b1d5e9Address)
}

function start(string arg1, string arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require msg.sender == msg.sender
    call stor4.0x9f35d3b2 with:
       value msg.value wei
         gas gas_remaining - 34050 wei
        args Array(len=arg1.length, data=arg1[all]), arg1.length + 224, arg3, arg4, arg5, arg6
    require ext_call.success
}

function attack(uint256 arg1, uint256 arg2, uint256[] arg3) payable {
    require msg.sender == msg.sender
    call stor7.0x110077db with:
         gas gas_remaining - 25050 wei
        args arg1, arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len 32 * arg3.length])
    require ext_call.success
    if not ext_call.return_data[0]:
    call stor6.0xa843c97f with:
         gas gas_remaining - 25050 wei
        args arg1, arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len 32 * arg3.length])
    require ext_call.success
    call stor7.0x17710b23 with:
         gas gas_remaining - 25050 wei
        args arg1, arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len 32 * arg3.length])
    require ext_call.return_data[0]
}

function buildCity(string arg1, uint256[2] arg2, uint256[2] arg3) payable {
    require msg.sender == msg.sender
    mem[ceil32(arg1.length) + 452 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        call stor6.0xb0ad38c4 with:
             gas gas_remaining - 25050 wei
            args 160, call.data[36 len 64], call.data[100 len 64], arg1.length, arg1[all]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 452] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 484 len arg1.length % 32]
        call stor6.0xb0ad38c4 with:
             gas gas_remaining - 25050 wei
            args 160, call.data[36 len 64], call.data[100 len 64], arg1.length, arg1[all], mem[ceil32(arg1.length) + arg1.length + 452 len -(arg1.length % 32) + 32]
    require ext_call.success
}



}
