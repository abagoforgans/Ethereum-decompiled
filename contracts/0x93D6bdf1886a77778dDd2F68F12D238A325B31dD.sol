contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
mapping of uint8 stor1;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function owner() {
    return owner
}

function isAuthorized(address arg1) {
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
  stop
}

function grantAccess(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 1
}

function withdraw(uint256 arg1) {
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function store(uint256 arg1) {
    if stor1[address(msg.sender)]:
        if arg1:
            require arg1 + 3735928559 >= 3735928560
            idx = totalSupply + 3735928560
            while idx <= totalSupply + arg1 + 3735928559:
                stor[idx] = 1
                idx = idx + 1
                continue 
            totalSupply += arg1
}

function execute(bytes arg1) {
    mem[128 len arg1.length] = arg1[all]
    if stor1[address(msg.sender)]:
        _3 = mem[128]
        s = 0
        idx = 32
        while idx < arg1.length:
            _8 = mem[idx + 128]
            mem[ceil32(arg1.length) + 128] = 0x88c2a0bf00000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg1.length) + 132] = _8
            call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 arg1) with:
                 gas gas_remaining - 5000 wei
                args _8
            require ext_call.success
            s = _8
            idx = idx + 32
            continue 
        if totalSupply:
            idx = totalSupply + -_3 + 3735928560
            while idx <= totalSupply + 3735928559:
                stor[idx] = 0
                idx = idx + 1
                continue 
            totalSupply -= _3
}



}
