<template>
  <div class="music-info">
      <h2>{{info.m_name}}</h2>
      <div class="info-bar">
          <div class="played">
              {{info.m_play>100000?(parseInt(info.m_play/100000) * 100000+'+'):info.m_play}}
          </div>
          <div class="liked">
              {{info.m_like}}
          </div>
          <div class="to-phone">
              设为手机铃声
          </div>
      </div>
  </div>
</template>
<script>
export default {
  props: ['info']
}
</script>
<style scoped>
    .music-info{
        padding: .5rem 1.2rem; 
        border-bottom: 1px solid #e8e8e8;
    }
  .music-info h2{
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
  }
  .info-bar div{
      display: inline-block;
      color:#a9a9a9;
      margin-right: 1rem;
      height: 2rem;
      line-height: 2rem;
  }
  .info-bar div::before{
    width: .5rem;
    height: .5rem;
    margin-right: .18rem;
    display: inline-block;
    content: "";
    vertical-align: middle;
    background-size: contain;
  }
  .played::before{
    background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAAAVCAYAAACkCdXRAAAAAXNSR0IArs4c6QAAAldJREFUOBGdlE1oE1EQgH27q4XYJGhA8ZCL4g+oxwak3ioIIWgxJPEgevHQmy29BJSKP7T00NKiB8WLlx7yq1HIRS1eFNEgiFBBiILiwYTWgwFZssn6TUjKtqZh48BkZmdnvp037+Up27a1TCYzjz2nlNKwS9jZeDy+tq1PUalU6hY115x1wNaATmHvAW043/XyNQrOSIJhGCfREO5zQLuxd9EPuVzuFNaVqHQ6bVGs04EOuClVLPtss9mcwz3QpjzmQ5PRaPRL+7mrkRnp8qYDEj8WixW8Xu9R3CTx39jRRqOxwodn0EHJ6SZat6DEwuGwmUgkZnEPAXyI3cGHk9jPzPkSvsLfILIBtkQo/OelM5PZDdHdIpATEucDb3Vdv8LS33Tytuysk9CxFL1j+cOapl0A9ANoCPhrmnlQKpW2S55rmCQDsQEu+f3+wzzeBmhiL5fL5aeybNfLFNhmyWazB+nuBfGgHKu+OtsMCwQCX4l9kzjQPf8N44iEqtXqKzjD6E902eCnL2FX93GgZ5jRxdaclJKDfJpD/8c1rFgsDtRqtQmWcxXIIJshw59HpwHVpCNXMAY9CmgOyH4pAvQIM8nZlJmtS09YPp8/ZlnWAt2MSAWQj5hxOlleJzicrjAgAQA3AI3RjVwAq+gU/n1AW15JAvuOBguFwl6fz7fKDo3V6/WbxHYBsLB3PB7P9Ugk8gu/pwhMtve8aZovK5XKTvygVAB6hhlnLivy7EYMiiZofwg90i74RCzJcp64AThzWjcFB1DutOOozn/vPbDWTeJMdOP/BebECCjL2MryAAAAAElFTkSuQmCC) no-repeat;
    
  }
  .liked::before{
      background: url(data:image/png;base64,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) no-repeat;
  }
  .info-bar .to-phone{
      color:#6ed56c;
      margin: 0;
      float: right;
  }
  .info-bar .to-phone::before{
      width: 1.2rem;
      height: 1.2rem;
      background: url(data:image/png;base64,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) no-repeat;
  }
</style>

