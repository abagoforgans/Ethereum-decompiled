contract main {




// =====================  Runtime code  =====================


array of address agents;

function agents(uint256 arg1) {
    require arg1 < agents.length
    return agents[arg1]
}

function _fallback() payable {
    revert
}

function sellAll() {
    idx = 0
    while idx < 30:
        require idx < agents.length
        mem[0] = 0
        mem[96] = 0x3955f0fe00000000000000000000000000000000000000000000000000000000
        require ext_code.size(agents[idx])
        call agents[idx].0x3955f0fe with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
