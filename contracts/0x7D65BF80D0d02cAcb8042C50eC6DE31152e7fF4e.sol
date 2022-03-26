contract main {


// =======================  Init code  ======================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 16
uint256 stor0; offset 8
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint16 stor7;

function _fallback() payable {
    stor1 = code.data[2764 len 32] or Mask(96, 160, stor1)
    stor2 = code.data[2796 len 32] or Mask(96, 160, stor2)
    stor3 = code.data[2828 len 32] or Mask(96, 160, stor3)
    uint8(stor0.field_0) = 0
    Mask(248, 0, stor0.field_8) = 0
    uint8(stor0.field_8) = 1
    Mask(240, 0, stor0.field_16) = 0
    Mask(240, 0, stor0.field_16) = code.data[2734 len 30]
    stor6 = 0
    stor5 = 0
    stor7 = 0
    stor4 = code.data[2732 len 32]
    return code.data[172 len 2560]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


bool stor0; offset 256
uint8 sub_9a328ea3;
uint8 state; offset 8
address sub_f74e54e1Address; offset 16
uint256 stor0; offset 8
address oracleAddress;
address userAddress;
uint256 stor2;
address sub_d4af69aaAddress;
address owner;
address sub_db022a55Address;
uint256 stor5;
uint256 currentAmount;
uint8 sub_86d988d4;
uint8 sub_ce48dcdb; offset 8
uint16 stor7;
uint256 stor7; offset 8
uint256 stor7;

function User() payable {
    return address(userAddress)
}

function sub_86d988d4(?) payable {
    return bool(sub_86d988d4)
}

function owner() payable {
    return owner
}

function sub_9a328ea3(?) payable {
    return sub_9a328ea3
}

function state() payable {
    return state
}

function sub_ce48dcdb(?) payable {
    return bool(sub_ce48dcdb)
}

function sub_cffe00f9(?) payable {
    return sub_f74e54e1Address
}

function sub_d4af69aa(?) payable {
    return sub_d4af69aaAddress
}

function sub_db022a55(?) payable {
    return address(sub_db022a55Address)
}

function Oracle() payable {
    return oracleAddress
}

function currentAmount() payable {
    return currentAmount
}

function sub_f74e54e1(?) payable {
    return sub_f74e54e1Address
}

function kill() payable {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function clearState() payable {
    state = 1
}

function refundState() payable {
    sub_9a328ea3 = 3
    state = 0
    stor0.field_256 % 1 = 0
}

function sub_199ea58b(?) payable {
    sub_9a328ea3 = 1
    state = 0
    stor0.field_256 % 1 = 0
}

function exchangeState() payable {
    require 1 == state
    sub_9a328ea3 = 2
    state = 0
    stor0.field_256 % 1 = 0
}

function sub_0a0ef373(?) payable {
    call owner with:
       value arg1 wei
         gas 0 wei
    return bool(ext_call.success)
}

function init() payable {
    sub_9a328ea3 = 0
    state = 1
    Mask(248, 0, stor0.field_8) = 0
    currentAmount = 0
    address(sub_db022a55Address) = 0
    uint16(stor7.field_0) = 0
}

function sub_a0d3db85(?) payable {
    require msg.sender == sub_d4af69aaAddress
    require 0 == sub_9a328ea3
    require 1 == state
    sub_9a328ea3 = 1
    state = 0
    stor0.field_256 % 1 = 0
    uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
    emit 0x53ddea14 
    return 1
}

function sub_62a02fe3(?) payable {
    require msg.sender == sub_f74e54e1Address
    require 0 == sub_9a328ea3
    require 1 == state
    currentAmount = arg1
    sub_9a328ea3 = 3
    state = 0
    stor0.field_256 % 1 = 0
    uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
    emit 0xae43dd33: arg1
    return 1
}

function sub_d19eb0a0(?) payable {
    require msg.sender == sub_f74e54e1Address
    require 0 == sub_9a328ea3
    require 1 == state
    currentAmount = arg1
    sub_9a328ea3 = 2
    state = 0
    stor0.field_256 % 1 = 0
    uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
    emit 0x42c0f00a: arg1
    return 1
}

function sub_ce92f8e4(?) payable {
    require msg.sender == sub_f74e54e1Address
    if 0 == arg1:
        return 0
    if sub_f74e54e1Address == arg1:
        return 0
    if oracleAddress == arg1:
        return 0
    if eth.balance(this.address) > 0:
        return 0
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
    emit Reset(arg1);
    return 1
}

function verify() payable {
    if sub_f74e54e1Address != msg.sender:
        if sub_d4af69aaAddress != msg.sender:
            require msg.sender == oracleAddress
    require not state
    require address(sub_db022a55Address) != msg.sender
    emit 0x2e5e1405 
    require 0 == state
    if 2 == sub_9a328ea3:
        require 0 == state
        if eth.balance(this.address) >= currentAmount:
            if 0 == bool(sub_86d988d4):
                call sub_f74e54e1Address with:
                   value currentAmount wei
                     gas 0 wei
                uint256(stor7.field_0) = Mask(248, 0, stor7.field_8)
            if 0 == bool(sub_ce48dcdb):
                call address(userAddress) with:
                   value eth.balance(this.address) - currentAmount wei
                     gas 0 wei
                Mask(248, 0, stor7.field_8) = Mask(248, 0, ext_call.success)
            if 1 == bool(sub_ce48dcdb):
                if 1 == bool(sub_86d988d4):
                    sub_9a328ea3 = 0
                    state = 1
                    Mask(248, 0, stor0.field_8) = 0
                    currentAmount = 0
                    address(sub_db022a55Address) = 0
                    uint16(stor7.field_0) = 0
                    emit 0x52267c24: currentAmount
    else:
        if sub_9a328ea3 != 3:
            if sub_9a328ea3 != 1:
                return 0
            require 0 == state
            call address(userAddress) with:
               value eth.balance(this.address) wei
                 gas 0 wei
            if ext_call.success:
                currentAmount = 0
                sub_9a328ea3 = 0
                state = 1
                Mask(248, 0, stor0.field_8) = 0
                currentAmount = 0
                address(sub_db022a55Address) = 0
                uint16(stor7.field_0) = 0
                emit Canceled(eth.balance(this.address));
        else:
            require 0 == state
            if eth.balance(this.address) >= currentAmount:
                if 0 == bool(sub_86d988d4):
                    call sub_f74e54e1Address with:
                       value eth.balance(this.address) - currentAmount wei
                         gas 0 wei
                    uint256(stor7.field_0) = Mask(248, 0, stor7.field_8)
                if 0 == bool(sub_ce48dcdb):
                    call address(userAddress) with:
                       value currentAmount wei
                         gas 0 wei
                    Mask(248, 0, stor7.field_8) = Mask(248, 0, ext_call.success)
                if 1 == bool(sub_ce48dcdb):
                    if 1 == bool(sub_86d988d4):
                        sub_9a328ea3 = 0
                        state = 1
                        Mask(248, 0, stor0.field_8) = 0
                        currentAmount = 0
                        address(sub_db022a55Address) = 0
                        uint16(stor7.field_0) = 0
                        emit Refunded(currentAmount);
    return 1
}



}
