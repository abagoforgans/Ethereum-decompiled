contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = code.data[3991 len 32]
    create contract with 0 wei
                    code: code.data[158 len 1264], 'chain_chain'
    require create.new_address
    stor1 = create.new_address or Mask(96, 160, stor1)
    return code.data[1422 len 2569]
}



// =====================  Runtime code  =====================


array of uint256 standard;
array of uint256 name;
uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function _fallback() {
    revert 
}

function mintToken(uint256 arg1) {
    require owner == msg.sender
    balanceOf[stor3] += arg1
    totalSupply += arg1
}

function transfer(address arg1, uint256 arg2) {
    if owner == msg.sender:
        balanceOf[stor3] += arg2
        totalSupply += arg2
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
}



}
