contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor5 = msg.sender or Mask(96, 160, stor5)
    stor6 = msg.sender or Mask(96, 160, stor6)
    return code.data[68 len 1050]
}



// =====================  Runtime code  =====================


array of address persons;
uint256 stor1;
uint256 payoutIdx;
uint256 currentNiceGuyIdx;
uint256 investor;
address currentNiceGuyAddress;
address betaAddress;

function investor() payable {
    return investor
}

function niceGuys(uint256 arg1) payable {
    require arg1 < stor1
    return address(stor[code.data[1018 len 32] + arg1])
}

function currentNiceGuyIdx() payable {
    return currentNiceGuyIdx
}

function beta() payable {
    return betaAddress
}

function persons(uint256 arg1) payable {
    require arg1 < persons.length
    return address(persons[arg1])
}

function payoutIdx() payable {
    return payoutIdx
}

function currentNiceGuy() payable {
    return currentNiceGuyAddress
}

function funnel() payable {
    call betaAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function _fallback() payable {
    require msg.value == 25 * 10^14 * 3600
    if investor >= 8:
        if investor <= 7:
            if investor >= 9:
                investor = 0
            else:
                investor++
            call currentNiceGuyAddress with:
               value 10^18 wei
                 gas 0 wei
            # nil
        else:
            stor1++
            if not stor1 <= stor1 + 1:
                idx = stor1 + code.data[1018 len 32] + 1
                while code.data[1018 len 32] + stor1 > idx:
                    address(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            require stor1 < stor1
            uint256(stor[code.data[1018 len 32] + stor1]) = msg.sender or Mask(96, 160, uint256(stor[code.data[1018 len 32] + stor1]))
            if investor <= 8:
                if investor >= 9:
                    investor = 0
                else:
                    investor++
                call currentNiceGuyAddress with:
                   value 10^18 wei
                     gas 0 wei
                # nil
            else:
                require currentNiceGuyIdx < stor1
                currentNiceGuyAddress = address(stor[code.data[1018 len 32] + stor3])
                currentNiceGuyIdx++
                if investor >= 9:
                    investor = 0
                else:
                    investor++
                call currentNiceGuyAddress with:
                   value 10^18 wei
                     gas 0 wei
                # nil
    else:
        persons.length++
        if not persons.length <= persons.length + 1:
            idx = persons.length + 1
            while persons.length > idx:
                address(persons[idx]) = 0
                idx = idx + 1
                continue 
        require persons.length < persons.length
        uint256(persons[persons.length]) = msg.sender or Mask(96, 160, uint256(persons[persons.length]))
        if investor <= 7:
            if investor >= 9:
                investor = 0
            else:
                investor++
            call currentNiceGuyAddress with:
               value 10^18 wei
                 gas 0 wei
            # nil
        else:
            stor1++
            if not stor1 <= stor1 + 1:
                idx = stor1 + code.data[1018 len 32] + 1
                while code.data[1018 len 32] + stor1 > idx:
                    address(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            require stor1 < stor1
            uint256(stor[code.data[1018 len 32] + stor1]) = msg.sender or Mask(96, 160, uint256(stor[code.data[1018 len 32] + stor1]))
            if investor <= 8:
                if investor >= 9:
                    investor = 0
                else:
                    investor++
                call currentNiceGuyAddress with:
                   value 10^18 wei
                     gas 0 wei
                # nil
            else:
                require currentNiceGuyIdx < stor1
                currentNiceGuyAddress = address(stor[code.data[1018 len 32] + stor3])
                currentNiceGuyIdx++
                if investor >= 9:
                    investor = 0
                else:
                    investor++
                call currentNiceGuyAddress with:
                   value 10^18 wei
                     gas 0 wei
                # nil
}



}
