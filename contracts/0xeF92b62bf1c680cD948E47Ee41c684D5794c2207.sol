contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    stor0[tx.origin] = 10000
    return code.data[47 len 614]
}



// =====================  Runtime code  =====================


mapping of uint256 balance;

function getBalance(address arg1) payable {
    return balance[address(arg1)]
}

function _fallback() payable {
  stop
}

function sub_746c181b(?) payable {
    return sha3(4870818611834028305, 10000, arg1[all])
}

function sendCoin(address arg1, uint256 arg2) payable {
    if balance[address(msg.sender)] < arg2:
        return 0
    balance[address(msg.sender)] -= arg2
    balance[arg1] += arg2
    return 1
}

function verifySignature(bytes32 arg1, bytes arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    if arg2.length != 65:
        return 0
    signer = erecover(arg1, mem[161] << 248, mem[128], mem[160]) 
    require erecover.result
    return address(signer)
}



}
