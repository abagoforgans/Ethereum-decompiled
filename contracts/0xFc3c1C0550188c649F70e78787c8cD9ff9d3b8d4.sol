contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor0 = block.timestamp
    stor1 = msg.sender
    stor2 = 0
    stor3 = 0
    require not msg.value
    return code.data[69 len 3059]
}



// =====================  Runtime code  =====================


uint256 creationTime;
address owner;
uint256 totalEthHandled;
uint256 rate;
array of address cubes;

function rate() {
    return rate
}

function owner() {
    return owner
}

function getCubeCount() {
    return cubes.length
}

function Cubes(uint256 arg1) {
    require arg1 < cubes.length
    return address(cubes[arg1])
}

function creationTime() {
    return creationTime
}

function totalEthHandled() {
    return totalEthHandled
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function withdraw() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function forgetCube(address arg1) {
    require ext_code.size(arg1)
    call arg1.id() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] < cubes.length
    require msg.sender == address(cubes[ext_call.return_data[0]])
    if ext_call.return_data[0] != cubes.length - 1:
        require cubes.length - 1 < cubes.length
        require ext_call.return_data[0] < cubes.length
        address(cubes[ext_call.return_data[0]]) = address(cubes[cubes.length])
        require ext_code.size(address(cubes[ext_call.return_data[0]]))
        call address(cubes[ext_call.return_data[0]]).setId(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
    cubes.length--
    if not cubes.length <= cubes.length - 1:
        idx = cubes.length - 1
        while cubes.length > idx:
            uint256(cubes[idx]) = 0
            idx = idx + 1
            continue 
    require ext_code.size(arg1)
    call arg1.destination() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit Deliver(eth.balance(arg1), arg1, address(ext_call.return_data[0]));
}

function freeze(uint256 arg1) payable {
    require msg.value > 0
    require msg.value + totalEthHandled >= totalEthHandled
    totalEthHandled += msg.value
    if rate != 200:
        if totalEthHandled > 5000 * 10^18:
            rate = 200
        else:
            if totalEthHandled > 1000 * 10^18:
                rate = 500
            else:
                if totalEthHandled > 100 * 10^18:
                    rate = 1000
    if rate <= 0:
        require arg1 + block.number >= block.number
        create contract with callvalue wei
                        code: code.data[2355 len 661], address(msg.sender), arg1 + block.number, this.address
        require create.new_address
        cubes.length++
        if not cubes.length <= cubes.length + 1:
            idx = cubes.length + 1
            while cubes.length > idx:
                uint256(cubes[idx]) = 0
                idx = idx + 1
                continue 
        address(cubes[cubes.length]) = address(create.new_address)
        require ext_code.size(address(create.new_address))
        call address(create.new_address).setId(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args cubes.length
        require ext_call.success
        require arg1 + block.number >= block.number
        emit Freeze(address rg1, address rg2, uint256 rg3, uint256 rg4, string rg5):
                    msg.value,
                    arg1 + block.number,
                    96,
                    5,
                    0,
                    msg.sender,
                    address(create.new_address),
    else:
        require rate
        require msg.value == (rate * msg.value / rate) + (msg.value % rate)
        require msg.value / rate <= msg.value
        require arg1 + block.number >= block.number
        create contract with ('add', 'callvalue', ('mul', -1, ('div', 'callvalue', ('stor', ('name', 'rate', 3))))) wei
                        code: code.data[2355 len 661], address(msg.sender), arg1 + block.number, this.address
        require create.new_address
        cubes.length++
        if not cubes.length <= cubes.length + 1:
            idx = cubes.length + 1
            while cubes.length > idx:
                uint256(cubes[idx]) = 0
                idx = idx + 1
                continue 
        address(cubes[cubes.length]) = address(create.new_address)
        require ext_code.size(address(create.new_address))
        call address(create.new_address).setId(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args cubes.length
        require ext_call.success
        require arg1 + block.number >= block.number
        emit Freeze(address rg1, address rg2, uint256 rg3, uint256 rg4, string rg5):
                    msg.value - (msg.value / rate),
                    arg1 + block.number,
                    96,
                    5,
                    0,
                    msg.sender,
                    address(create.new_address),
}

function freezeAPI(uint256 arg1, string arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    require msg.value > 0
    require msg.value + totalEthHandled >= totalEthHandled
    totalEthHandled += msg.value
    if rate != 200:
        if totalEthHandled > 5000 * 10^18:
            rate = 200
        else:
            if totalEthHandled > 1000 * 10^18:
                rate = 500
            else:
                if totalEthHandled > 100 * 10^18:
                    rate = 1000
    if rate <= 0:
        require arg1 + block.number >= block.number
        mem[ceil32(arg2.length) + 128 len 661] = code.data[2355 len 661]
        mem[ceil32(arg2.length) + 789] = msg.sender
        mem[ceil32(arg2.length) + 821] = arg1 + block.number
        mem[ceil32(arg2.length) + 853] = this.address
        create contract with callvalue wei
                        code: code.data[2355 len 661], msg.sender, arg1 + block.number, this.address
        require create.new_address
        cubes.length++
        if not cubes.length <= cubes.length + 1:
            idx = cubes.length + 1
            while cubes.length > idx:
                uint256(cubes[idx]) = 0
                idx = idx + 1
                continue 
        address(cubes[cubes.length]) = address(create.new_address)
        require ext_code.size(address(create.new_address))
        call address(create.new_address).setId(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args cubes.length
        require ext_call.success
        require arg1 + block.number >= block.number
        mem[ceil32(arg2.length) + 128] = msg.value
        mem[ceil32(arg2.length) + 160] = arg1 + block.number
        mem[ceil32(arg2.length) + 192] = 96
        mem[ceil32(arg2.length) + 224] = arg2.length
        if arg2.length:
            mem[ceil32(arg2.length) + 256] = mem[128]
            mem[ceil32(arg2.length) + 288 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        emit Freeze(msg.value, arg1 + block.number, Array(len=arg2.length, data=mem[ceil32(arg2.length) + 256 len arg2.length]), msg.sender, address(create.new_address));
    else:
        require rate
        require msg.value == (rate * msg.value / rate) + (msg.value % rate)
        require msg.value / rate <= msg.value
        require arg1 + block.number >= block.number
        mem[ceil32(arg2.length) + 128 len 661] = code.data[2355 len 661]
        mem[ceil32(arg2.length) + 789] = msg.sender
        mem[ceil32(arg2.length) + 821] = arg1 + block.number
        mem[ceil32(arg2.length) + 853] = this.address
        create contract with ('add', 'callvalue', ('mul', -1, ('div', 'callvalue', ('stor', ('name', 'rate', 3))))) wei
                        code: code.data[2355 len 661], msg.sender, arg1 + block.number, this.address
        require create.new_address
        cubes.length++
        if not cubes.length <= cubes.length + 1:
            idx = cubes.length + 1
            while cubes.length > idx:
                uint256(cubes[idx]) = 0
                idx = idx + 1
                continue 
        address(cubes[cubes.length]) = address(create.new_address)
        require ext_code.size(address(create.new_address))
        call address(create.new_address).setId(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args cubes.length
        require ext_call.success
        require arg1 + block.number >= block.number
        mem[ceil32(arg2.length) + 128] = msg.value - (msg.value / rate)
        mem[ceil32(arg2.length) + 160] = arg1 + block.number
        mem[ceil32(arg2.length) + 192] = 96
        mem[ceil32(arg2.length) + 224] = arg2.length
        if arg2.length:
            mem[ceil32(arg2.length) + 256] = mem[128]
            mem[ceil32(arg2.length) + 288 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        emit Freeze(msg.value - (msg.value / rate), arg1 + block.number, Array(len=arg2.length, data=mem[ceil32(arg2.length) + 256 len arg2.length]), msg.sender, address(create.new_address));
}



}
