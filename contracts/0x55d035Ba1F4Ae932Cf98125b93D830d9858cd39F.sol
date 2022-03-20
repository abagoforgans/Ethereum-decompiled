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


uint256 stor0;
array of address niceGuys;
uint256 payoutIdx;
uint256 currentNiceGuyIdx;
uint256 investor;
address currentNiceGuyAddress;
address betaAddress;

function investor() payable {
    return investor
}

function niceGuys(uint256 arg1) payable {
    require arg1 < niceGuys.length
    return address(niceGuys[arg1])
}

function currentNiceGuyIdx() payable {
    return currentNiceGuyIdx
}

function beta() payable {
    return betaAddress
}

function persons(uint256 arg1) payable {
    require arg1 < stor0
    return address(stor[code.data[1018 len 32] + arg1])
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
    if investor <= 8:
        if investor >= 9:
            investor++
            if 11 == investor + 1:
                investor = 0
            if stor0:
                call currentNiceGuyAddress with:
                   value 10^18 wei
                     gas 0 wei
            # nil
        else:
            stor0++
            if not stor0 <= stor0 + 1:
                idx = stor0 + code.data[1018 len 32] + 1
                while code.data[1018 len 32] + stor0 > idx:
                    address(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            require stor0 < stor0
            uint256(stor[code.data[1018 len 32] + stor0]) = msg.sender or Mask(96, 160, uint256(stor[code.data[1018 len 32] + stor0]))
            investor++
            if 11 == investor + 1:
                investor = 0
            if stor0:
                call currentNiceGuyAddress with:
                   value 10^18 wei
                     gas 0 wei
            # nil
    else:
        niceGuys.length++
        if not niceGuys.length <= niceGuys.length + 1:
            idx = niceGuys.length + 1
            while niceGuys.length > idx:
                address(niceGuys[idx]) = 0
                idx = idx + 1
                continue 
        require niceGuys.length < niceGuys.length
        uint256(niceGuys[niceGuys.length]) = msg.sender or Mask(96, 160, uint256(niceGuys[niceGuys.length]))
        if investor != 10:
            if investor >= 9:
                investor++
                if 11 == investor + 1:
                    investor = 0
                if stor0:
                    call currentNiceGuyAddress with:
                       value 10^18 wei
                         gas 0 wei
                # nil
            else:
                stor0++
                if not stor0 <= stor0 + 1:
                    idx = stor0 + code.data[1018 len 32] + 1
                    while code.data[1018 len 32] + stor0 > idx:
                        address(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                require stor0 < stor0
                uint256(stor[code.data[1018 len 32] + stor0]) = msg.sender or Mask(96, 160, uint256(stor[code.data[1018 len 32] + stor0]))
                investor++
                if 11 == investor + 1:
                    investor = 0
                if stor0:
                    call currentNiceGuyAddress with:
                       value 10^18 wei
                         gas 0 wei
                # nil
        else:
            require currentNiceGuyIdx < niceGuys.length
            currentNiceGuyAddress = address(niceGuys[stor3])
            currentNiceGuyIdx++
            if investor >= 9:
                investor++
                if 11 == investor + 1:
                    investor = 0
                if stor0:
                    call currentNiceGuyAddress with:
                       value 10^18 wei
                         gas 0 wei
                # nil
            else:
                stor0++
                if not stor0 <= stor0 + 1:
                    idx = stor0 + code.data[1018 len 32] + 1
                    while code.data[1018 len 32] + stor0 > idx:
                        address(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                require stor0 < stor0
                uint256(stor[code.data[1018 len 32] + stor0]) = msg.sender or Mask(96, 160, uint256(stor[code.data[1018 len 32] + stor0]))
                investor++
                if 11 == investor + 1:
                    investor = 0
                if stor0:
                    call currentNiceGuyAddress with:
                       value 10^18 wei
                         gas 0 wei
                # nil
}



}
