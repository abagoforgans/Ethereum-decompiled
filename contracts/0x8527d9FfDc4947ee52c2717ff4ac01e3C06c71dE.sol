contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[37 len 852]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
uint256 totalShares;
uint256 threshold;
array of address shareholders;
mapping of uint256 shares;

function totalShares() payable {
    return totalShares
}

function threshold() payable {
    return threshold
}

function shareholders(uint256 arg1) payable {
    require arg1 < shareholders.length
    return address(shareholders[arg1])
}

function shares(address arg1) payable {
    return shares[arg1]
}

function setThreshold(uint256 arg1) payable {
    if address(stor0) == msg.sender:
        threshold = arg1
}

function changeOwner(address arg1) payable {
    if address(stor0) != msg.sender:
        return 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function _fallback() payable {
    if eth.balance(this.address) > threshold:
        idx = 0
        while idx < shareholders.length:
            mem[0] = address(shareholders[idx])
            mem[32] = 4
            call address(shareholders[idx]) with:
               value eth.balance(this.address) / totalShares * shares[address(stor3[idx])] wei
                 gas 0 wei
            idx = idx + 1
            continue 
}

function sub_ebf6a0fa(?) payable {
    if address(stor0) != msg.sender:
        return 0
    if arg2 <= shares[address(arg1)]:
        if arg2 == shares[address(arg1)]:
            shares[address(arg1)] = 0
        else:
            totalShares = totalShares - shares[address(arg1)] + arg2
            shares[address(arg1)] = arg2
    else:
        if shares[address(arg1)] != 0:
            totalShares = totalShares + arg2 - shares[address(arg1)]
            shares[address(arg1)] = arg2
        else:
            shareholders.length++
            if not shareholders.length <= shareholders.length + 1:
                idx = shareholders.length + 1
                while shareholders.length > idx:
                    uint256(shareholders[idx]) = 0
                    idx = idx + 1
                    continue 
            require shareholders.length < shareholders.length
            uint256(shareholders[shareholders.length]) = arg1 or Mask(96, 160, uint256(shareholders[shareholders.length]))
            totalShares = totalShares + arg2 - shares[3]
            shares[3] = arg2
    return 1
}



}
