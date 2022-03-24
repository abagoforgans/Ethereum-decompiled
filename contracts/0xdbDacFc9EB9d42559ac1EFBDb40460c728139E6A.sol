contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1042]
}



// =====================  Runtime code  =====================


const name = ''

const decimals = 0

const symbol = ''


address stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) payable {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function issueTokens(address arg1, uint256 arg2) payable {
    require stor0 == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    return 1
}

function revokeTokens(address arg1, uint256 arg2) payable {
    require stor0 == msg.sender
    if arg2 > balanceOf[address(arg1)]:
        return 0
    balanceOf[address(arg1)] -= arg2
    totalSupply -= arg2
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    delegate 0x19ee743d2e356d5f0e4d97cc09b96d06e933d0db.0xc6605267 with:
         gas gas_remaining - 50 wei
        args 1, address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function transfer(address arg1, uint256 arg2) payable {
    delegate 0x19ee743d2e356d5f0e4d97cc09b96d06e933d0db.0x88d5fecb with:
         gas gas_remaining - 50 wei
        args 1, address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    delegate 0x19ee743d2e356d5f0e4d97cc09b96d06e933d0db.0xa00bfa11 with:
         gas gas_remaining - 50 wei
        args 0, 1, address(arg1), address(arg2), arg3, stor0
    require delegate.return_code
    return bool(delegate.return_data[0])
}



}
