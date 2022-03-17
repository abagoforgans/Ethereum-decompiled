contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xfa5186a0af28454ba31bfc7b1100880b01b2051d
    return code.data[83 len 1145]
}



// =====================  Runtime code  =====================


address stor0;
mapping of address stor1;

function kill() payable {
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function rollDice() payable {
    call stor0.0xadf59f99 with:
         gas gas_remaining - 25050 wei
        args 0, 0, 96, 160, 12, 'WolframAlpha', 29, 'random number between 1 and 6'
    require ext_call.success
}

function bet() payable {
    require msg.value == 1
    require eth.balance(this.address) >= 2
    call stor0.0xadf59f99 with:
         gas gas_remaining - 25050 wei
        args 0, 0, 96, 160, 12, 'WolframAlpha', 29, 'random number between 1 and 6'
    require ext_call.success
}

function __callback(bytes32 arg1, string arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    call stor0.0x4c773795 with:
         gas gas_remaining - 25050 wei
    mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require 0 < arg2.length
    if mem[128 len 1] - 49 <= 2:
        call stor1[arg1] with:
           value 1 wei
             gas 0 wei
    else:
        call stor1[arg1] with:
           value 2 wei
             gas 0 wei
}



}
