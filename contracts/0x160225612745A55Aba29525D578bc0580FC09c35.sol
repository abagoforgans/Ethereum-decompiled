contract main {




// =====================  Runtime code  =====================


const sub_6e1282d0(?) = ext_call.return_data[0]

const sub_a5d5fd11(?) = ext_call.return_data[0]

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

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 <= eth.balance(this.address):
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function guess() payable {
    require msg.sender == owner
    require ext_code.size(0x767b8c6fb76db2e2a547819ba7afd2006d3de6b2)
    staticcall 0x767b8c6fb76db2e2a547819ba7afd2006d3de6b2.0x6b453285 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 2 * msg.value
    require ext_code.size(0x767b8c6fb76db2e2a547819ba7afd2006d3de6b2)
    staticcall 0x767b8c6fb76db2e2a547819ba7afd2006d3de6b2.0xeabb538a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require block.timestamp + block.hash(block.number - 1) >= block.hash(block.number - 1)
    require ext_call.return_data[0] >= 0
    num = ext_call.return_data[0] + block.timestamp + block.hash(block.number - 1) % 100
    require ext_call.return_data[0] + block.timestamp + block.hash(block.number - 1) % 100 >= 50
    return 0
}



}
