<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.List"%>
<%@page import="com.iteat.domain.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="rank.css">
</head>
<body>


    <!-- <div style="height: 300px; overflow: auto"> 
        <div style="height: 200px;">
            <div class="tech">
                <div class="leng_rank">
                    <div>
                        <span class="skill">RDBMS </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="395" min="0" max="500"></progress>
                        </div>
                    </div>
            
                    
                    <div>
                        <span class="skill">AWS </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="327" min="0" max="500"></progress>
                        </div>
                    </div>
            
                    <div>
                        <span class="skill">Spring </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="251" min="0" max="500"></progress>
                        </div>
                    </div>
            
            
                   <div>
                        <span class="skill">Git </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="241" min="0" max="500"></progress>
                        </div>
                    </div>
        
        
                    <div>
                        <span class="skill">Kubernetes </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="229" min="0" max="500"></progress>
                        </div>
                    </div>
        
                    <div>
                        <span class="skill">NoSQL </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="224" min="0" max="500"></progress>
                        </div>
                    </div>
        
                    <div>
                        <span class="skill">Linux </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="222" min="0" max="500"></progress>
                        </div>
                    </div>
        
        
        
                    <div>
                        <span class="skill">React </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="178" min="0" max="500"></progress>
                        </div>
                    </div>
        
        
        
                    <div>
                        <span class="skill">Android </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="151" min="0" max="500"></progress>
                        </div>
                    </div>
        
                    <div>
                        <span class="skill">Docker </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="151" min="0" max="500"></progress>
                        </div>
                    </div>
        
                    <div>
                        <span class="skill">IOS </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="147" min="0" max="500"></progress>
                        </div>
                    </div>
        
        
        
        
                    <div>
                        <span class="skill">MySQL </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="132" min="0" max="500"></progress>
                        </div>
                    </div>
        
        
                    <div>
                        <span class="skill">Kafka </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="126" min="0" max="500"></progress>
                        </div>
                    </div>
                    <div>
                        <span class="skill">Hadoop </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="116" min="0" max="500"></progress>
                        </div>
                    </div>
        
        
                    <div>
                        <span class="skill">Node.js </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="112" min="0" max="500"></progress>
                        </div>
                    </div>
        
        
        
                    <div>
                        <span class="skill">Spark </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="115" min="0" max="500"></progress>
                        </div>
                    </div>
        
        
                    <div>
                        <span class="skill">Vue.js </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="114" min="0" max="500"></progress>
                        </div>
                    </div>
        
        
                    <div>
                        <span class="skill">GCP </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="106" min="0" max="500"></progress>
                        </div>
                    </div>
        
                    <div>
                        <span class="skill">Redis </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="94" min="0" max="500"></progress>
                        </div>
                    </div>
                    
                    <div>
                        <span class="skill">Elasticsearch </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="91" min="0" max="500"></progress>
                        </div>
                    </div>
        
        
                    <div>
                        <span class="skill">Azure </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="61" min="0" max="500"></progress>
                        </div>
                    </div>
        
        
        
        
                    <div>
                        <span class="skill">JPA </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="175" min="0" max="500"></progress>
                        </div>
                    </div>
        
                    <div>
                        <span class="skill">Unity </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="73" min="0" max="500"></progress>
                        </div>
                    </div>
        
                    <div>
                        <span class="skill">Unreal Engine </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="63" min="0" max="500"></progress>
                        </div>
                    </div>
        
                    <div>
                        <span class="skill">Angular </span>
                        <div class="progress_bar_wrap">
                        <progress class="progress" value="61" min="0" max="500"></progress>
                        </div>
                    </div>
        </div> 
      </div> -->
    


    <div class="tech">
        <div class="leng_rank">
            <div>
                <span class="skill">RDBMS </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="395" min="0" max="500"></progress>
                </div>
            </div>
    
            
            <div>
                <span class="skill">AWS </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="327" min="0" max="500"></progress>
                </div>
            </div>
    
            <div>
                <span class="skill">Spring </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="251" min="0" max="500"></progress>
                </div>
            </div>
    
    
           <div>
                <span class="skill">Git </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="241" min="0" max="500"></progress>
                </div>
            </div>


            <div>
                <span class="skill">Kubernetes </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="229" min="0" max="500"></progress>
                </div>
            </div>

            <div>
                <span class="skill">NoSQL </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="224" min="0" max="500"></progress>
                </div>
            </div>

            <div>
                <span class="skill">Linux </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="222" min="0" max="500"></progress>
                </div>
            </div>



            <div>
                <span class="skill">React </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="178" min="0" max="500"></progress>
                </div>
            </div>



            <div>
                <span class="skill">Android </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="151" min="0" max="500"></progress>
                </div>
            </div>

            <div>
                <span class="skill">Docker </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="151" min="0" max="500"></progress>
                </div>
            </div>

            <div>
                <span class="skill">IOS </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="147" min="0" max="500"></progress>
                </div>
            </div>




            <div>
                <span class="skill">MySQL </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="132" min="0" max="500"></progress>
                </div>
            </div>


            <div>
                <span class="skill">Kafka </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="126" min="0" max="500"></progress>
                </div>
            </div>
            <div>
                <span class="skill">Hadoop </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="116" min="0" max="500"></progress>
                </div>
            </div>


            <div>
                <span class="skill">Node.js </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="112" min="0" max="500"></progress>
                </div>
            </div>



            <div>
                <span class="skill">Spark </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="115" min="0" max="500"></progress>
                </div>
            </div>


            <div>
                <span class="skill">Vue.js </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="114" min="0" max="500"></progress>
                </div>
            </div>


            <div>
                <span class="skill">GCP </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="106" min="0" max="500"></progress>
                </div>
            </div>

            <div>
                <span class="skill">Redis </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="94" min="0" max="500"></progress>
                </div>
            </div>
            
            <div>
                <span class="skill">Elasticsearch </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="91" min="0" max="500"></progress>
                </div>
            </div>


            <div>
                <span class="skill">Azure </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="61" min="0" max="500"></progress>
                </div>
            </div>




            <div>
                <span class="skill">JPA </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="175" min="0" max="500"></progress>
                </div>
            </div>

            <div>
                <span class="skill">Unity </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="73" min="0" max="500"></progress>
                </div>
            </div>

            <div>
                <span class="skill">Unreal Engine </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="63" min="0" max="500"></progress>
                </div>
            </div>

            <div>
                <span class="skill">Angular </span>
                <div class="progress_bar_wrap">
                <progress class="progress" value="61" min="0" max="500"></progress>
                </div>
            </div>




    



    </div>


</body>
</html>