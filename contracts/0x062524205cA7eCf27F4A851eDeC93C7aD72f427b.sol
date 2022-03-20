contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor4;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    stor4 = 0
    return code.data[42 len 1035]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 payoutCursor_Id_;
uint256 balance;
address owner;
uint256 stor3;
uint256 payoutCursor_Id;

function payoutCursor_Id_() payable {
    return payoutCursor_Id_
}

function owner() payable {
    return address(owner)
}

function payoutCursor_Id() payable {
    return payoutCursor_Id
}

function balance() payable {
    return balance
}

function quick() payable {
    uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor3) = arg1 or Mask(96, 160, uint256(stor3))
}

function persons(uint256 arg1) payable {
    require arg1 < stor0.length
    return address(stor0[arg1].field_0), stor[code.data[1003 len 32] + (2 * arg1)]
}

function enter() payable {
    if msg.value < 10^17:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    if msg.value <= 2 * 10^18:
        stor0.length++
        if not stor0.length > stor0.length + 1:
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1003 len 32] + (2 * stor0.length)] = msg.value
            balance += msg.value
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var22003 wei
                 gas 0 wei
            balance -= var22003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var32003 wei
                 gas 0 wei
            balance -= var32003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var42003 wei
                 gas 0 wei
            balance -= var42003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            # nil
        else:
            idx = 2 * stor0.length + 1
            while 2 * stor0.length > idx:
                address(stor0[idx].field_0) = 0
                stor0[idx].field_256 = 0
                idx = idx + 1
                continue 
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1003 len 32] + (2 * stor0.length)] = msg.value
            balance += msg.value
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var26003 wei
                 gas 0 wei
            balance -= var26003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var36003 wei
                 gas 0 wei
            balance -= var36003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var46003 wei
                 gas 0 wei
            balance -= var46003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            # nil
    else:
        call msg.sender with:
           value msg.value - 2 * 10^18 wei
             gas 0 wei
        stor0.length++
        if not stor0.length > stor0.length + 1:
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1003 len 32] + (2 * stor0.length)] = 2 * 10^18
            balance += 2 * 10^18
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var22003 wei
                 gas 0 wei
            balance -= var22003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var32003 wei
                 gas 0 wei
            balance -= var32003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var42003 wei
                 gas 0 wei
            balance -= var42003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            # nil
        else:
            idx = 2 * stor0.length + 1
            while 2 * stor0.length > idx:
                address(stor0[idx].field_0) = 0
                stor0[idx].field_256 = 0
                idx = idx + 1
                continue 
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1003 len 32] + (2 * stor0.length)] = 2 * 10^18
            balance += 2 * 10^18
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var26003 wei
                 gas 0 wei
            balance -= var26003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var36003 wei
                 gas 0 wei
            balance -= var36003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var46003 wei
                 gas 0 wei
            balance -= var46003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            # nil
}

function _fallback() payable {
    if msg.value < 10^17:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    if msg.value <= 2 * 10^18:
        stor0.length++
        if not stor0.length > stor0.length + 1:
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1003 len 32] + (2 * stor0.length)] = msg.value
            balance += msg.value
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var22003 wei
                 gas 0 wei
            balance -= var22003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var32003 wei
                 gas 0 wei
            balance -= var32003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var42003 wei
                 gas 0 wei
            balance -= var42003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            # nil
        else:
            idx = 2 * stor0.length + 1
            while 2 * stor0.length > idx:
                address(stor0[idx].field_0) = 0
                stor0[idx].field_256 = 0
                idx = idx + 1
                continue 
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1003 len 32] + (2 * stor0.length)] = msg.value
            balance += msg.value
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var26003 wei
                 gas 0 wei
            balance -= var26003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var36003 wei
                 gas 0 wei
            balance -= var36003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var46003 wei
                 gas 0 wei
            balance -= var46003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            # nil
    else:
        call msg.sender with:
           value msg.value - 2 * 10^18 wei
             gas 0 wei
        stor0.length++
        if not stor0.length > stor0.length + 1:
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1003 len 32] + (2 * stor0.length)] = 2 * 10^18
            balance += 2 * 10^18
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var22003 wei
                 gas 0 wei
            balance -= var22003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var32003 wei
                 gas 0 wei
            balance -= var32003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var42003 wei
                 gas 0 wei
            balance -= var42003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            # nil
        else:
            idx = 2 * stor0.length + 1
            while 2 * stor0.length > idx:
                address(stor0[idx].field_0) = 0
                stor0[idx].field_256 = 0
                idx = idx + 1
                continue 
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor[code.data[1003 len 32] + (2 * stor0.length)] = 2 * 10^18
            balance += 2 * 10^18
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var26003 wei
                 gas 0 wei
            balance -= var26003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var36003 wei
                 gas 0 wei
            balance -= var36003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            require payoutCursor_Id < stor0.length
            call address(stor0[stor4].field_0) with:
               value var46003 wei
                 gas 0 wei
            balance -= var46003
            payoutCursor_Id_++
            require payoutCursor_Id_ < stor0.length
            if balance <= 115 * stor[code.data[1003 len 32] + (2 * stor1)] / 100:
            require payoutCursor_Id_ < stor0.length
            # nil
}



}
