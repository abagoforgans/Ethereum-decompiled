contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor5 = msg.sender or Mask(96, 160, stor5)
    return code.data[51 len 1000]
}



// =====================  Runtime code  =====================


array of address investors;
uint256 stor1;
uint256 payoutIndex;
uint256 sub_0f44fa3d;
uint256 investorIndex;
address sub_5cdee7adAddress;

function sub_0f44fa3d(?) payable {
    return sub_0f44fa3d
}

function payoutIndex() payable {
    return payoutIndex
}

function investors(uint256 arg1) payable {
    require arg1 < investors.length
    return address(investors[arg1])
}

function sub_4018171f(?) payable {
    require arg1 < stor1
    return address(stor[code.data[968 len 32] + arg1])
}

function sub_5cdee7ad(?) payable {
    return sub_5cdee7adAddress
}

function investorIndex() payable {
    return investorIndex
}

function _fallback() payable {
    if 25 * 10^14 * 3600 != msg.value:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        revert 
    call sub_5cdee7adAddress with:
       value 10^18 wei
         gas 0 wei
    if investorIndex >= 8:
        if investorIndex <= 7:
            if investorIndex >= 9:
                investorIndex = 0
            else:
                investorIndex++
            # nil
        else:
            stor1++
            if not stor1 <= stor1 + 1:
                idx = stor1 + code.data[968 len 32] + 1
                while code.data[968 len 32] + stor1 > idx:
                    address(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            require stor1 < stor1
            uint256(stor[code.data[968 len 32] + stor1]) = msg.sender or Mask(96, 160, uint256(stor[code.data[968 len 32] + stor1]))
            if investorIndex <= 8:
                if investorIndex >= 9:
                    investorIndex = 0
                else:
                    investorIndex++
                # nil
            else:
                require sub_0f44fa3d < stor1
                sub_5cdee7adAddress = address(stor[code.data[968 len 32] + stor3])
                sub_0f44fa3d++
                if investorIndex >= 9:
                    investorIndex = 0
                else:
                    investorIndex++
                # nil
    else:
        investors.length++
        if not investors.length <= investors.length + 1:
            idx = investors.length + 1
            while investors.length > idx:
                address(investors[idx]) = 0
                idx = idx + 1
                continue 
        require investors.length < investors.length
        uint256(investors[investors.length]) = msg.sender or Mask(96, 160, uint256(investors[investors.length]))
        if investorIndex <= 7:
            if investorIndex >= 9:
                investorIndex = 0
            else:
                investorIndex++
            # nil
        else:
            stor1++
            if not stor1 <= stor1 + 1:
                idx = stor1 + code.data[968 len 32] + 1
                while code.data[968 len 32] + stor1 > idx:
                    address(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            require stor1 < stor1
            uint256(stor[code.data[968 len 32] + stor1]) = msg.sender or Mask(96, 160, uint256(stor[code.data[968 len 32] + stor1]))
            if investorIndex <= 8:
                if investorIndex >= 9:
                    investorIndex = 0
                else:
                    investorIndex++
                # nil
            else:
                require sub_0f44fa3d < stor1
                sub_5cdee7adAddress = address(stor[code.data[968 len 32] + stor3])
                sub_0f44fa3d++
                if investorIndex >= 9:
                    investorIndex = 0
                else:
                    investorIndex++
                # nil
}



}
