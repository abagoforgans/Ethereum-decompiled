contract main {




// =====================  Runtime code  =====================


uint256 PRICE_PER_TOKEN;
uint256 sub_3197549f;
uint256 sub_40075177;
uint256 sub_c3469086;
uint256 sub_0533979d;
uint256 MIN_PURCHASE;
uint256 sub_d269353f;
uint256 sub_cd14f4b3;
uint256 sub_e4ecd857;
uint256 START;
uint256 END;
address owner;
mapping of struct whiteListed;
array of struct candidates;

function sub_0533979d(?) {
    return sub_0533979d
}

function sub_3197549f(?) {
    return sub_3197549f
}

function candidates(uint256 arg1) {
    require arg1 < candidates.length
    return candidates[arg1].field_0
}

function sub_40075177(?) {
    return sub_40075177
}

function PRICE_PER_TOKEN() {
    return PRICE_PER_TOKEN
}

function owner() {
    return owner
}

function START() {
    return START
}

function sub_c3469086(?) {
    return sub_c3469086
}

function sub_cd14f4b3(?) {
    return sub_cd14f4b3
}

function sub_d269353f(?) {
    return sub_d269353f
}

function MIN_PURCHASE() {
    return MIN_PURCHASE
}

function sub_e4ecd857(?) {
    return sub_e4ecd857
}

function END() {
    return END
}

function whiteListed(address arg1) {
    return whiteListed[arg1].field_0, whiteListed[arg1].field_256, whiteListed[arg1].field_512
}

function _fallback() payable {
    revert
}

function currentStage() {
    require sub_3197549f
    return (sub_cd14f4b3 / sub_3197549f)
}

function remainingTokens() {
    require sub_cd14f4b3 <= sub_c3469086
    return (sub_c3469086 - sub_cd14f4b3)
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCandidates() {
    if not candidates.length:
        mem[(32 * candidates.length) + 128] = 32
        mem[(32 * candidates.length) + 160] = candidates.length
        mem[(32 * candidates.length) + 192 len floor32(candidates.length)] = mem[128 len floor32(candidates.length)]
        return memory
          from (32 * candidates.length) + 128
           len (96 * candidates.length) + 64
    mem[128] = address(candidates.field_0)
    idx = 128
    s = 0
    while (32 * candidates.length) + 96 > idx:
        mem[idx + 32] = candidates[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * candidates.length) + 192 len floor32(candidates.length)] = mem[128 len floor32(candidates.length)]
    return Array(len=candidates.length, data=mem[128 len floor32(candidates.length)], mem[(32 * candidates.length) + floor32(candidates.length) + 192 len (32 * candidates.length) - floor32(candidates.length)]), 
}

function sub_5a51a367(?) payable {
    if msg.value < MIN_PURCHASE:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Minimum purchase amount has not been reached'
    if block.timestamp <= START:
        revert with 0, 'The contract has not opened yet.'
    if block.timestamp >= END:
        revert with 0, 'The contract has ended.'
    require sub_3197549f
    if not sub_0533979d:
        require PRICE_PER_TOKEN >= PRICE_PER_TOKEN
        require PRICE_PER_TOKEN
        if (msg.value / PRICE_PER_TOKEN) + sub_cd14f4b3 <= sub_cd14f4b3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Maximum cap has been reached, decrease your order'
        if msg.value / PRICE_PER_TOKEN <= sub_d269353f:
            require (msg.value / PRICE_PER_TOKEN) + sub_cd14f4b3 >= sub_cd14f4b3
            sub_cd14f4b3 += msg.value / PRICE_PER_TOKEN
            require msg.value / PRICE_PER_TOKEN <= sub_d269353f
            sub_d269353f -= msg.value / PRICE_PER_TOKEN
            if not sub_d269353f - (msg.value / PRICE_PER_TOKEN):
                sub_d269353f = sub_3197549f
            if whiteListed[msg.sender].field_0 != msg.sender:
                candidates.length++
                candidates[candidates.length].field_0 = msg.sender or Mask(96, 160, candidates[candidates.length].field_0)
            require whiteListed[msg.sender].field_256 >= whiteListed[msg.sender].field_256
            whiteListed[msg.sender].field_0 = whiteListed[msg.sender].field_160
            require (msg.value / PRICE_PER_TOKEN) + whiteListed[msg.sender].field_512 >= whiteListed[msg.sender].field_512
            whiteListed[msg.sender].field_512 += msg.value / PRICE_PER_TOKEN
        else:
            if not sub_d269353f:
                require sub_d269353f >= 0
                require sub_d269353f + sub_cd14f4b3 >= sub_cd14f4b3
                sub_cd14f4b3 += sub_d269353f
                require sub_d269353f <= sub_d269353f
                sub_d269353f = 0
                sub_d269353f = sub_3197549f
                require sub_3197549f
                if not sub_0533979d:
                    require PRICE_PER_TOKEN >= PRICE_PER_TOKEN
                    require 0 <= msg.value
                    require PRICE_PER_TOKEN
                    require (msg.value / PRICE_PER_TOKEN) + sub_cd14f4b3 >= sub_cd14f4b3
                    sub_cd14f4b3 += msg.value / PRICE_PER_TOKEN
                    require msg.value / PRICE_PER_TOKEN <= sub_d269353f
                    sub_d269353f -= msg.value / PRICE_PER_TOKEN
                    if not sub_d269353f - (msg.value / PRICE_PER_TOKEN):
                        sub_d269353f = sub_3197549f
                    require (msg.value / PRICE_PER_TOKEN) + sub_d269353f >= sub_d269353f
                    if whiteListed[msg.sender].field_0 != msg.sender:
                        candidates.length++
                        candidates[candidates.length].field_0 = msg.sender or Mask(96, 160, candidates[candidates.length].field_0)
                    require whiteListed[msg.sender].field_256 >= whiteListed[msg.sender].field_256
                    whiteListed[msg.sender].field_0 = whiteListed[msg.sender].field_160
                    require (msg.value / PRICE_PER_TOKEN) + sub_d269353f + whiteListed[msg.sender].field_512 >= whiteListed[msg.sender].field_512
                    whiteListed[msg.sender].field_512 = (msg.value / PRICE_PER_TOKEN) + sub_d269353f + whiteListed[msg.sender].field_512
                else:
                    require sub_cd14f4b3 / sub_3197549f * sub_0533979d / sub_0533979d == sub_cd14f4b3 / sub_3197549f
                    require (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN >= PRICE_PER_TOKEN
                    require 0 <= msg.value
                    require (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN
                    require (msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN) + sub_cd14f4b3 >= sub_cd14f4b3
                    sub_cd14f4b3 += msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN
                    require msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN <= sub_d269353f
                    sub_d269353f -= msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN
                    if not sub_d269353f - (msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN):
                        sub_d269353f = sub_3197549f
                    require (msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN) + sub_d269353f >= sub_d269353f
                    if whiteListed[msg.sender].field_0 != msg.sender:
                        candidates.length++
                        candidates[candidates.length].field_0 = msg.sender or Mask(96, 160, candidates[candidates.length].field_0)
                    require whiteListed[msg.sender].field_256 >= whiteListed[msg.sender].field_256
                    whiteListed[msg.sender].field_0 = whiteListed[msg.sender].field_160
                    require (msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN) + sub_d269353f + whiteListed[msg.sender].field_512 >= whiteListed[msg.sender].field_512
                    whiteListed[msg.sender].field_512 = (msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN) + sub_d269353f + whiteListed[msg.sender].field_512
            else:
                require PRICE_PER_TOKEN * sub_d269353f / sub_d269353f == PRICE_PER_TOKEN
                require sub_d269353f >= 0
                require sub_d269353f + sub_cd14f4b3 >= sub_cd14f4b3
                sub_cd14f4b3 += sub_d269353f
                require sub_d269353f <= sub_d269353f
                sub_d269353f = 0
                sub_d269353f = sub_3197549f
                require sub_3197549f
                if not sub_0533979d:
                    require PRICE_PER_TOKEN >= PRICE_PER_TOKEN
                    require PRICE_PER_TOKEN * sub_d269353f <= msg.value
                    require PRICE_PER_TOKEN
                    require (msg.value - (PRICE_PER_TOKEN * sub_d269353f) / PRICE_PER_TOKEN) + sub_cd14f4b3 >= sub_cd14f4b3
                    sub_cd14f4b3 += msg.value - (PRICE_PER_TOKEN * sub_d269353f) / PRICE_PER_TOKEN
                    require msg.value - (PRICE_PER_TOKEN * sub_d269353f) / PRICE_PER_TOKEN <= sub_d269353f
                    sub_d269353f -= msg.value - (PRICE_PER_TOKEN * sub_d269353f) / PRICE_PER_TOKEN
                    if not sub_d269353f - (msg.value - (PRICE_PER_TOKEN * sub_d269353f) / PRICE_PER_TOKEN):
                        sub_d269353f = sub_3197549f
                    require (msg.value - (PRICE_PER_TOKEN * sub_d269353f) / PRICE_PER_TOKEN) + sub_d269353f >= sub_d269353f
                    if whiteListed[msg.sender].field_0 != msg.sender:
                        candidates.length++
                        candidates[candidates.length].field_0 = msg.sender or Mask(96, 160, candidates[candidates.length].field_0)
                    require whiteListed[msg.sender].field_256 >= whiteListed[msg.sender].field_256
                    whiteListed[msg.sender].field_0 = whiteListed[msg.sender].field_160
                    require (msg.value - (PRICE_PER_TOKEN * sub_d269353f) / PRICE_PER_TOKEN) + sub_d269353f + whiteListed[msg.sender].field_512 >= whiteListed[msg.sender].field_512
                    whiteListed[msg.sender].field_512 = (msg.value - (PRICE_PER_TOKEN * sub_d269353f) / PRICE_PER_TOKEN) + sub_d269353f + whiteListed[msg.sender].field_512
                else:
                    require sub_cd14f4b3 / sub_3197549f * sub_0533979d / sub_0533979d == sub_cd14f4b3 / sub_3197549f
                    require (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN >= PRICE_PER_TOKEN
                    require PRICE_PER_TOKEN * sub_d269353f <= msg.value
                    require (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN
                    require (msg.value - (PRICE_PER_TOKEN * sub_d269353f) / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN) + sub_cd14f4b3 >= sub_cd14f4b3
                    sub_cd14f4b3 += msg.value - (PRICE_PER_TOKEN * sub_d269353f) / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN
                    require msg.value - (PRICE_PER_TOKEN * sub_d269353f) / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN <= sub_d269353f
                    sub_d269353f -= msg.value - (PRICE_PER_TOKEN * sub_d269353f) / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN
                    if not sub_d269353f - (msg.value - (PRICE_PER_TOKEN * sub_d269353f) / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN):
                        sub_d269353f = sub_3197549f
                    require (msg.value - (PRICE_PER_TOKEN * sub_d269353f) / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN) + sub_d269353f >= sub_d269353f
                    if whiteListed[msg.sender].field_0 != msg.sender:
                        candidates.length++
                        candidates[candidates.length].field_0 = msg.sender or Mask(96, 160, candidates[candidates.length].field_0)
                    require whiteListed[msg.sender].field_256 >= whiteListed[msg.sender].field_256
                    whiteListed[msg.sender].field_0 = whiteListed[msg.sender].field_160
                    require (msg.value - (PRICE_PER_TOKEN * sub_d269353f) / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN) + sub_d269353f + whiteListed[msg.sender].field_512 >= whiteListed[msg.sender].field_512
                    whiteListed[msg.sender].field_512 = (msg.value - (PRICE_PER_TOKEN * sub_d269353f) / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN) + sub_d269353f + whiteListed[msg.sender].field_512
    else:
        require sub_cd14f4b3 / sub_3197549f * sub_0533979d / sub_0533979d == sub_cd14f4b3 / sub_3197549f
        require (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN >= PRICE_PER_TOKEN
        require (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN
        if (msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN) + sub_cd14f4b3 <= sub_cd14f4b3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Maximum cap has been reached, decrease your order'
        if msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN <= sub_d269353f:
            require (msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN) + sub_cd14f4b3 >= sub_cd14f4b3
            sub_cd14f4b3 += msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN
            require msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN <= sub_d269353f
            sub_d269353f -= msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN
            if not sub_d269353f - (msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN):
                sub_d269353f = sub_3197549f
            if whiteListed[msg.sender].field_0 != msg.sender:
                candidates.length++
                candidates[candidates.length].field_0 = msg.sender or Mask(96, 160, candidates[candidates.length].field_0)
            require whiteListed[msg.sender].field_256 >= whiteListed[msg.sender].field_256
            whiteListed[msg.sender].field_0 = whiteListed[msg.sender].field_160
            require (msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN) + whiteListed[msg.sender].field_512 >= whiteListed[msg.sender].field_512
            whiteListed[msg.sender].field_512 += msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN
        else:
            if not sub_d269353f:
                require sub_d269353f >= 0
                require sub_d269353f + sub_cd14f4b3 >= sub_cd14f4b3
                sub_cd14f4b3 += sub_d269353f
                require sub_d269353f <= sub_d269353f
                sub_d269353f = 0
                sub_d269353f = sub_3197549f
                require sub_3197549f
                if not sub_0533979d:
                    require PRICE_PER_TOKEN >= PRICE_PER_TOKEN
                    require 0 <= msg.value
                    require PRICE_PER_TOKEN
                    require (msg.value / PRICE_PER_TOKEN) + sub_cd14f4b3 >= sub_cd14f4b3
                    sub_cd14f4b3 += msg.value / PRICE_PER_TOKEN
                    require msg.value / PRICE_PER_TOKEN <= sub_d269353f
                    sub_d269353f -= msg.value / PRICE_PER_TOKEN
                    if not sub_d269353f - (msg.value / PRICE_PER_TOKEN):
                        sub_d269353f = sub_3197549f
                    require (msg.value / PRICE_PER_TOKEN) + sub_d269353f >= sub_d269353f
                    if whiteListed[msg.sender].field_0 != msg.sender:
                        candidates.length++
                        candidates[candidates.length].field_0 = msg.sender or Mask(96, 160, candidates[candidates.length].field_0)
                    require whiteListed[msg.sender].field_256 >= whiteListed[msg.sender].field_256
                    whiteListed[msg.sender].field_0 = whiteListed[msg.sender].field_160
                    require (msg.value / PRICE_PER_TOKEN) + sub_d269353f + whiteListed[msg.sender].field_512 >= whiteListed[msg.sender].field_512
                    whiteListed[msg.sender].field_512 = (msg.value / PRICE_PER_TOKEN) + sub_d269353f + whiteListed[msg.sender].field_512
                else:
                    require sub_cd14f4b3 / sub_3197549f * sub_0533979d / sub_0533979d == sub_cd14f4b3 / sub_3197549f
                    require (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN >= PRICE_PER_TOKEN
                    require 0 <= msg.value
                    require (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN
                    require (msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN) + sub_cd14f4b3 >= sub_cd14f4b3
                    sub_cd14f4b3 += msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN
                    require msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN <= sub_d269353f
                    sub_d269353f -= msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN
                    if not sub_d269353f - (msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN):
                        sub_d269353f = sub_3197549f
                    require (msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN) + sub_d269353f >= sub_d269353f
                    if whiteListed[msg.sender].field_0 != msg.sender:
                        candidates.length++
                        candidates[candidates.length].field_0 = msg.sender or Mask(96, 160, candidates[candidates.length].field_0)
                    require whiteListed[msg.sender].field_256 >= whiteListed[msg.sender].field_256
                    whiteListed[msg.sender].field_0 = whiteListed[msg.sender].field_160
                    require (msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN) + sub_d269353f + whiteListed[msg.sender].field_512 >= whiteListed[msg.sender].field_512
                    whiteListed[msg.sender].field_512 = (msg.value / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN) + sub_d269353f + whiteListed[msg.sender].field_512
            else:
                require (sub_cd14f4b3 / sub_3197549f * sub_0533979d * sub_d269353f) + (PRICE_PER_TOKEN * sub_d269353f) / sub_d269353f == (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN
                require sub_d269353f >= 0
                require sub_d269353f + sub_cd14f4b3 >= sub_cd14f4b3
                sub_cd14f4b3 += sub_d269353f
                require sub_d269353f <= sub_d269353f
                sub_d269353f = 0
                sub_d269353f = sub_3197549f
                require sub_3197549f
                if not sub_0533979d:
                    require PRICE_PER_TOKEN >= PRICE_PER_TOKEN
                    require (sub_cd14f4b3 / sub_3197549f * sub_0533979d * sub_d269353f) + (PRICE_PER_TOKEN * sub_d269353f) <= msg.value
                    require PRICE_PER_TOKEN
                    require (msg.value - (sub_cd14f4b3 / sub_3197549f * sub_0533979d * sub_d269353f) - (PRICE_PER_TOKEN * sub_d269353f) / PRICE_PER_TOKEN) + sub_cd14f4b3 >= sub_cd14f4b3
                    sub_cd14f4b3 += msg.value - (sub_cd14f4b3 / sub_3197549f * sub_0533979d * sub_d269353f) - (PRICE_PER_TOKEN * sub_d269353f) / PRICE_PER_TOKEN
                    require msg.value - (sub_cd14f4b3 / sub_3197549f * sub_0533979d * sub_d269353f) - (PRICE_PER_TOKEN * sub_d269353f) / PRICE_PER_TOKEN <= sub_d269353f
                    sub_d269353f -= msg.value - (sub_cd14f4b3 / sub_3197549f * sub_0533979d * sub_d269353f) - (PRICE_PER_TOKEN * sub_d269353f) / PRICE_PER_TOKEN
                    if not sub_d269353f - (msg.value - (sub_cd14f4b3 / sub_3197549f * sub_0533979d * sub_d269353f) - (PRICE_PER_TOKEN * sub_d269353f) / PRICE_PER_TOKEN):
                        sub_d269353f = sub_3197549f
                    require (msg.value - (sub_cd14f4b3 / sub_3197549f * sub_0533979d * sub_d269353f) - (PRICE_PER_TOKEN * sub_d269353f) / PRICE_PER_TOKEN) + sub_d269353f >= sub_d269353f
                    if whiteListed[msg.sender].field_0 != msg.sender:
                        candidates.length++
                        candidates[candidates.length].field_0 = msg.sender or Mask(96, 160, candidates[candidates.length].field_0)
                    require whiteListed[msg.sender].field_256 >= whiteListed[msg.sender].field_256
                    whiteListed[msg.sender].field_0 = whiteListed[msg.sender].field_160
                    require (msg.value - (sub_cd14f4b3 / sub_3197549f * sub_0533979d * sub_d269353f) - (PRICE_PER_TOKEN * sub_d269353f) / PRICE_PER_TOKEN) + sub_d269353f + whiteListed[msg.sender].field_512 >= whiteListed[msg.sender].field_512
                    whiteListed[msg.sender].field_512 = (msg.value - (sub_cd14f4b3 / sub_3197549f * sub_0533979d * sub_d269353f) - (PRICE_PER_TOKEN * sub_d269353f) / PRICE_PER_TOKEN) + sub_d269353f + whiteListed[msg.sender].field_512
                else:
                    require sub_cd14f4b3 / sub_3197549f * sub_0533979d / sub_0533979d == sub_cd14f4b3 / sub_3197549f
                    require (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN >= PRICE_PER_TOKEN
                    require (sub_cd14f4b3 / sub_3197549f * sub_0533979d * sub_d269353f) + (PRICE_PER_TOKEN * sub_d269353f) <= msg.value
                    require (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN
                    require (msg.value - (sub_cd14f4b3 / sub_3197549f * sub_0533979d * sub_d269353f) - (PRICE_PER_TOKEN * sub_d269353f) / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN) + sub_cd14f4b3 >= sub_cd14f4b3
                    sub_cd14f4b3 += msg.value - (sub_cd14f4b3 / sub_3197549f * sub_0533979d * sub_d269353f) - (PRICE_PER_TOKEN * sub_d269353f) / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN
                    require msg.value - (sub_cd14f4b3 / sub_3197549f * sub_0533979d * sub_d269353f) - (PRICE_PER_TOKEN * sub_d269353f) / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN <= sub_d269353f
                    sub_d269353f -= msg.value - (sub_cd14f4b3 / sub_3197549f * sub_0533979d * sub_d269353f) - (PRICE_PER_TOKEN * sub_d269353f) / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN
                    if not sub_d269353f - (msg.value - (sub_cd14f4b3 / sub_3197549f * sub_0533979d * sub_d269353f) - (PRICE_PER_TOKEN * sub_d269353f) / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN):
                        sub_d269353f = sub_3197549f
                    require (msg.value - (sub_cd14f4b3 / sub_3197549f * sub_0533979d * sub_d269353f) - (PRICE_PER_TOKEN * sub_d269353f) / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN) + sub_d269353f >= sub_d269353f
                    if whiteListed[msg.sender].field_0 != msg.sender:
                        candidates.length++
                        candidates[candidates.length].field_0 = msg.sender or Mask(96, 160, candidates[candidates.length].field_0)
                    require whiteListed[msg.sender].field_256 >= whiteListed[msg.sender].field_256
                    whiteListed[msg.sender].field_0 = whiteListed[msg.sender].field_160
                    require (msg.value - (sub_cd14f4b3 / sub_3197549f * sub_0533979d * sub_d269353f) - (PRICE_PER_TOKEN * sub_d269353f) / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN) + sub_d269353f + whiteListed[msg.sender].field_512 >= whiteListed[msg.sender].field_512
                    whiteListed[msg.sender].field_512 = (msg.value - (sub_cd14f4b3 / sub_3197549f * sub_0533979d * sub_d269353f) - (PRICE_PER_TOKEN * sub_d269353f) / (sub_cd14f4b3 / sub_3197549f * sub_0533979d) + PRICE_PER_TOKEN) + sub_d269353f + whiteListed[msg.sender].field_512
    return 1
}



}
