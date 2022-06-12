contract main {




// =====================  Runtime code  =====================


const sub_6e1282d0(?) = ext_call.return_data[0]

const balance = eth.balance(this.address)


address owner;
uint256 num;

function num() {
    return num
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function withdrawAll() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw() {
    require msg.sender == owner
    if eth.balance(this.address) >= 10^17:
        call owner with:
           value 10^17 wei
             gas 0 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function guess() payable {
    require msg.sender == owner
    require ext_code.size(0x767b8c6fb76db2e2a547819ba7afd2006d3de6b2)
    staticcall 0x767b8c6fb76db2e2a547819ba7afd2006d3de6b2.0x2b81d395 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value == 10^17
    idx = 0
    s = 0
    while idx < 1:
        require block.timestamp + block.hash(block.number - 1) >= block.hash(block.number - 1)
        require idx + ext_call.return_data[0]
        num = block.timestamp + block.hash(block.number - 1) % idx + ext_call.return_data[0]
        require block.timestamp + block.hash(block.number - 1) % idx + ext_call.return_data[0] != 1
        idx = idx + 1
        s = idx + ext_call.return_data[0]
        continue 
    return 0
}



}
