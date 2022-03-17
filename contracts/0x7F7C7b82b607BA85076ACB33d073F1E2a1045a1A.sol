contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0[address(code.data[1731 len 32])] = code.data[1699 len 32]
    stor1 = code.data[1731 len 32] or Mask(96, 160, stor1)
    stor2 = code.data[1763 len 32]
    return code.data[165 len 1534]
}



// =====================  Runtime code  =====================


const isApprovedOnceFor(address arg1, address arg2) = 0

const isApprovedFor(address arg1, address arg2) = 0

const approveOnce(address arg1, uint256 arg2) = 0

const approve(address arg1) = 0

const unapprove(address arg1) = 0


mapping of uint256 bal;
address issuerAddress;
uint256 name;

function name() payable {
    return name
}

function issuer() payable {
    return issuerAddress
}

function bal(address arg1) payable {
    return bal[arg1]
}

function balanceOf(address arg1) payable {
    return bal[address(arg1)]
}

function _fallback() payable {
  stop
}

function transfer(address arg1, uint256 arg2) payable {
    if bal[address(msg.sender)] < arg2:
        return 0
    bal[address(msg.sender)] -= arg2
    bal[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    if arg1 != msg.sender:
        return 0
    if bal[address(arg1)] < arg3:
        return 0
    bal[address(arg1)] -= arg3
    bal[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
